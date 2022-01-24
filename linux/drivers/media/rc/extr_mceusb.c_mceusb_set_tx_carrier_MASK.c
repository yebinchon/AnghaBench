#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct rc_dev {struct mceusb_dev* priv; } ;
struct mceusb_dev {int carrier; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  cmdbuf ;

/* Variables and functions */
 int EINVAL ; 
 int MCE_CMD_PORT_IR ; 
 int MCE_CMD_SETIRCFS ; 
 unsigned char MCE_CMD_SIG_END ; 
 unsigned char MCE_IRDATA_TRAILER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct mceusb_dev*,unsigned char*,int) ; 

__attribute__((used)) static int FUNC2(struct rc_dev *dev, u32 carrier)
{
	struct mceusb_dev *ir = dev->priv;
	int clk = 10000000;
	int prescaler = 0, divisor = 0;
	unsigned char cmdbuf[4] = { MCE_CMD_PORT_IR,
				    MCE_CMD_SETIRCFS, 0x00, 0x00 };

	/* Carrier has changed */
	if (ir->carrier != carrier) {

		if (carrier == 0) {
			ir->carrier = carrier;
			cmdbuf[2] = MCE_CMD_SIG_END;
			cmdbuf[3] = MCE_IRDATA_TRAILER;
			FUNC0(ir->dev, "disabling carrier modulation");
			FUNC1(ir, cmdbuf, sizeof(cmdbuf));
			return 0;
		}

		for (prescaler = 0; prescaler < 4; ++prescaler) {
			divisor = (clk >> (2 * prescaler)) / carrier;
			if (divisor <= 0xff) {
				ir->carrier = carrier;
				cmdbuf[2] = prescaler;
				cmdbuf[3] = divisor;
				FUNC0(ir->dev, "requesting %u HZ carrier",
								carrier);

				/* Transmit new carrier to mce device */
				FUNC1(ir, cmdbuf, sizeof(cmdbuf));
				return 0;
			}
		}

		return -EINVAL;

	}

	return 0;
}