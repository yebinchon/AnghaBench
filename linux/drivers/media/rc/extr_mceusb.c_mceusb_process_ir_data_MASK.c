#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ microsoft_gen1; } ;
struct mceusb_dev {int parser_state; int rem; int cmd; int* buf_in; int pulse_tunit; TYPE_2__* rc; int /*<<< orphan*/  dev; int /*<<< orphan*/  pulse_count; TYPE_1__ flags; } ;
struct ir_raw_event {int pulse; int duration; int timeout; } ;
struct TYPE_5__ {int timeout; } ;

/* Variables and functions */
#define  CMD_DATA 131 
#define  CMD_HEADER 130 
 int MCE_CMD_PORT_IR ; 
 int MCE_COMMAND_IRDATA ; 
 int MCE_PACKET_LENGTH_MASK ; 
 int MCE_PORT_MASK ; 
 int MCE_PULSE_BIT ; 
 int MCE_PULSE_MASK ; 
 int /*<<< orphan*/  MCE_TIME_UNIT ; 
#define  PARSE_IRDATA 129 
#define  SUBCMD 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,struct ir_raw_event*) ; 
 int FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mceusb_dev*,int*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mceusb_dev*,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(struct mceusb_dev *ir, int buf_len)
{
	struct ir_raw_event rawir = {};
	bool event = false;
	int i = 0;

	/* skip meaningless 0xb1 0x60 header bytes on orig receiver */
	if (ir->flags.microsoft_gen1)
		i = 2;

	/* if there's no data, just return now */
	if (buf_len <= i)
		return;

	for (; i < buf_len; i++) {
		switch (ir->parser_state) {
		case SUBCMD:
			ir->rem = FUNC4(ir->cmd, ir->buf_in[i]);
			FUNC5(ir, ir->buf_in, buf_len, i - 1,
					     ir->rem + 2, false);
			FUNC6(ir, i);
			ir->parser_state = CMD_DATA;
			break;
		case PARSE_IRDATA:
			ir->rem--;
			rawir.pulse = ((ir->buf_in[i] & MCE_PULSE_BIT) != 0);
			rawir.duration = (ir->buf_in[i] & MCE_PULSE_MASK);
			if (FUNC7(!rawir.duration)) {
				FUNC1(ir->dev, "nonsensical irdata %02x with duration 0",
					ir->buf_in[i]);
				break;
			}
			if (rawir.pulse) {
				ir->pulse_tunit += rawir.duration;
				ir->pulse_count++;
			}
			rawir.duration *= FUNC0(MCE_TIME_UNIT);

			FUNC1(ir->dev, "Storing %s %u ns (%02x)",
				rawir.pulse ? "pulse" : "space",
				rawir.duration,	ir->buf_in[i]);

			if (FUNC3(ir->rc, &rawir))
				event = true;
			break;
		case CMD_DATA:
			ir->rem--;
			break;
		case CMD_HEADER:
			/* decode mce packets of the form (84),AA,BB,CC,DD */
			/* IR data packets can span USB messages - rem */
			ir->cmd = ir->buf_in[i];
			if ((ir->cmd == MCE_CMD_PORT_IR) ||
			    ((ir->cmd & MCE_PORT_MASK) !=
			     MCE_COMMAND_IRDATA)) {
				ir->parser_state = SUBCMD;
				continue;
			}
			ir->rem = (ir->cmd & MCE_PACKET_LENGTH_MASK);
			FUNC5(ir, ir->buf_in, buf_len,
					     i, ir->rem + 1, false);
			if (ir->rem) {
				ir->parser_state = PARSE_IRDATA;
			} else {
				struct ir_raw_event ev = {
					.timeout = 1,
					.duration = ir->rc->timeout
				};

				if (FUNC3(ir->rc,
								   &ev))
					event = true;
				ir->pulse_tunit = 0;
				ir->pulse_count = 0;
			}
			break;
		}

		if (ir->parser_state != CMD_HEADER && !ir->rem)
			ir->parser_state = CMD_HEADER;
	}
	if (event) {
		FUNC1(ir->dev, "processed IR data");
		FUNC2(ir->rc);
	}
}