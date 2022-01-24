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
struct sd {int bridge; } ;
struct ov_regvals {int const member_0; int member_1; } ;
struct gspca_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ov_regvals const*) ; 
#define  BRIDGE_OV511 136 
#define  BRIDGE_OV511PLUS 135 
 int /*<<< orphan*/  D_PROBE ; 
#define  R511_COMP_EN 134 
#define  R511_COMP_LUT_EN 133 
#define  R511_DRAM_FLOW_CTL 132 
#define  R511_FIFO_OPTS 131 
 int /*<<< orphan*/  R51x_SYS_CUST_ID ; 
#define  R51x_SYS_INIT 130 
#define  R51x_SYS_RESET 129 
#define  R51x_SYS_SNAP 128 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sd*) ; 
 int /*<<< orphan*/  FUNC3 (struct sd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sd*,struct ov_regvals const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct gspca_dev *gspca_dev)
{
	struct sd *sd = (struct sd *) gspca_dev;

	/* For 511 and 511+ */
	static const struct ov_regvals init_511[] = {
		{ R51x_SYS_RESET,	0x7f },
		{ R51x_SYS_INIT,	0x01 },
		{ R51x_SYS_RESET,	0x7f },
		{ R51x_SYS_INIT,	0x01 },
		{ R51x_SYS_RESET,	0x3f },
		{ R51x_SYS_INIT,	0x01 },
		{ R51x_SYS_RESET,	0x3d },
	};

	static const struct ov_regvals norm_511[] = {
		{ R511_DRAM_FLOW_CTL,	0x01 },
		{ R51x_SYS_SNAP,	0x00 },
		{ R51x_SYS_SNAP,	0x02 },
		{ R51x_SYS_SNAP,	0x00 },
		{ R511_FIFO_OPTS,	0x1f },
		{ R511_COMP_EN,		0x00 },
		{ R511_COMP_LUT_EN,	0x03 },
	};

	static const struct ov_regvals norm_511_p[] = {
		{ R511_DRAM_FLOW_CTL,	0xff },
		{ R51x_SYS_SNAP,	0x00 },
		{ R51x_SYS_SNAP,	0x02 },
		{ R51x_SYS_SNAP,	0x00 },
		{ R511_FIFO_OPTS,	0xff },
		{ R511_COMP_EN,		0x00 },
		{ R511_COMP_LUT_EN,	0x03 },
	};

	static const struct ov_regvals compress_511[] = {
		{ 0x70, 0x1f },
		{ 0x71, 0x05 },
		{ 0x72, 0x06 },
		{ 0x73, 0x06 },
		{ 0x74, 0x14 },
		{ 0x75, 0x03 },
		{ 0x76, 0x04 },
		{ 0x77, 0x04 },
	};

	FUNC1(gspca_dev, D_PROBE, "Device custom id %x\n",
		  FUNC3(sd, R51x_SYS_CUST_ID));

	FUNC4(sd, init_511, FUNC0(init_511));

	switch (sd->bridge) {
	case BRIDGE_OV511:
		FUNC4(sd, norm_511, FUNC0(norm_511));
		break;
	case BRIDGE_OV511PLUS:
		FUNC4(sd, norm_511_p, FUNC0(norm_511_p));
		break;
	}

	/* Init compression */
	FUNC4(sd, compress_511, FUNC0(compress_511));

	FUNC2(sd);
}