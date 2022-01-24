#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct v4l2_subdev {int /*<<< orphan*/  name; } ;
struct adv7511_state_edid {int /*<<< orphan*/  blocks; scalar_t__ segments; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct adv7511_state {char* i2c_edid_addr; char* i2c_cec_addr; int cec_valid_addrs; char** cec_addr; char* i2c_pktmem_addr; scalar_t__ cec_enabled_adap; int /*<<< orphan*/ * i2c_cec; TYPE_1__ dv_timings; int /*<<< orphan*/  edid_detect_counter; scalar_t__ power_on; struct adv7511_state_edid edid; } ;

/* Variables and functions */
 int ADV7511_MAX_ADDRS ; 
 int MASK_ADV7511_HPD_DETECT ; 
 int MASK_ADV7511_MSEN_DETECT ; 
 scalar_t__ V4L2_DV_BT_656_1120 ; 
 int /*<<< orphan*/  FUNC0 (struct v4l2_subdev*) ; 
 int FUNC1 (struct v4l2_subdev*,int) ; 
 struct adv7511_state* FUNC2 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_subdev*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC5(struct v4l2_subdev *sd)
{
	struct adv7511_state *state = FUNC2(sd);
	struct adv7511_state_edid *edid = &state->edid;
	int i;

	static const char * const states[] = {
		"in reset",
		"reading EDID",
		"idle",
		"initializing HDCP",
		"HDCP enabled",
		"initializing HDCP repeater",
		"6", "7", "8", "9", "A", "B", "C", "D", "E", "F"
	};
	static const char * const errors[] = {
		"no error",
		"bad receiver BKSV",
		"Ri mismatch",
		"Pj mismatch",
		"i2c error",
		"timed out",
		"max repeater cascade exceeded",
		"hash check failed",
		"too many devices",
		"9", "A", "B", "C", "D", "E", "F"
	};

	FUNC3(sd, "power %s\n", state->power_on ? "on" : "off");
	FUNC3(sd, "%s hotplug, %s Rx Sense, %s EDID (%d block(s))\n",
		  (FUNC1(sd, 0x42) & MASK_ADV7511_HPD_DETECT) ? "detected" : "no",
		  (FUNC1(sd, 0x42) & MASK_ADV7511_MSEN_DETECT) ? "detected" : "no",
		  edid->segments ? "found" : "no",
		  edid->blocks);
	FUNC3(sd, "%s output %s\n",
		  (FUNC1(sd, 0xaf) & 0x02) ?
		  "HDMI" : "DVI-D",
		  (FUNC1(sd, 0xa1) & 0x3c) ?
		  "disabled" : "enabled");
	FUNC3(sd, "state: %s, error: %s, detect count: %u, msk/irq: %02x/%02x\n",
			  states[FUNC1(sd, 0xc8) & 0xf],
			  errors[FUNC1(sd, 0xc8) >> 4], state->edid_detect_counter,
			  FUNC1(sd, 0x94), FUNC1(sd, 0x96));
	FUNC3(sd, "RGB quantization: %s range\n", FUNC1(sd, 0x18) & 0x80 ? "limited" : "full");
	if (FUNC1(sd, 0xaf) & 0x02) {
		/* HDMI only */
		u8 manual_cts = FUNC1(sd, 0x0a) & 0x80;
		u32 N = (FUNC1(sd, 0x01) & 0xf) << 16 |
			FUNC1(sd, 0x02) << 8 |
			FUNC1(sd, 0x03);
		u8 vic_detect = FUNC1(sd, 0x3e) >> 2;
		u8 vic_sent = FUNC1(sd, 0x3d) & 0x3f;
		u32 CTS;

		if (manual_cts)
			CTS = (FUNC1(sd, 0x07) & 0xf) << 16 |
			      FUNC1(sd, 0x08) << 8 |
			      FUNC1(sd, 0x09);
		else
			CTS = (FUNC1(sd, 0x04) & 0xf) << 16 |
			      FUNC1(sd, 0x05) << 8 |
			      FUNC1(sd, 0x06);
		FUNC3(sd, "CTS %s mode: N %d, CTS %d\n",
			  manual_cts ? "manual" : "automatic", N, CTS);
		FUNC3(sd, "VIC: detected %d, sent %d\n",
			  vic_detect, vic_sent);
		FUNC0(sd);
	}
	if (state->dv_timings.type == V4L2_DV_BT_656_1120)
		FUNC4(sd->name, "timings: ",
				&state->dv_timings, false);
	else
		FUNC3(sd, "no timings set\n");
	FUNC3(sd, "i2c edid addr: 0x%x\n", state->i2c_edid_addr);

	if (state->i2c_cec == NULL)
		return 0;

	FUNC3(sd, "i2c cec addr: 0x%x\n", state->i2c_cec_addr);

	FUNC3(sd, "CEC: %s\n", state->cec_enabled_adap ?
			"enabled" : "disabled");
	if (state->cec_enabled_adap) {
		for (i = 0; i < ADV7511_MAX_ADDRS; i++) {
			bool is_valid = state->cec_valid_addrs & (1 << i);

			if (is_valid)
				FUNC3(sd, "CEC Logical Address: 0x%x\n",
					  state->cec_addr[i]);
		}
	}
	FUNC3(sd, "i2c pktmem addr: 0x%x\n", state->i2c_pktmem_addr);
	return 0;
}