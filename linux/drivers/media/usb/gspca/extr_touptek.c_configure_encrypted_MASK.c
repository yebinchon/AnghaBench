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
struct TYPE_2__ {int /*<<< orphan*/  width; } ;
struct gspca_dev {TYPE_1__ pixfmt; } ;
struct cmd {int member_0; int const member_1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cmd const*) ; 
 int /*<<< orphan*/  D_STREAM ; 
#define  REG_GROUPED_PARAMETER_HOLD 137 
#define  REG_MODE_SELECT 136 
#define  REG_OP_PIX_CLK_DIV 135 
#define  REG_OP_SYS_CLK_DIV 134 
#define  REG_PLL_MULTIPLIER 133 
#define  REG_PRE_PLL_CLK_DIV 132 
#define  REG_RESET_REGISTER 131 
#define  REG_SOFTWARE_RESET 130 
#define  REG_VT_PIX_CLK_DIV 129 
#define  REG_VT_SYS_CLK_DIV 128 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct gspca_dev*,int,int const) ; 
 int /*<<< orphan*/  FUNC4 (struct gspca_dev*,struct cmd const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct gspca_dev *gspca_dev)
{
	static const struct cmd reg_init_begin[] = {
		{0x0100, REG_SOFTWARE_RESET},
		{0x0000, REG_MODE_SELECT},
		{0x0100, REG_GROUPED_PARAMETER_HOLD},
		{0x0004, REG_VT_PIX_CLK_DIV},
		{0x0001, REG_VT_SYS_CLK_DIV},
		{0x0008, REG_OP_PIX_CLK_DIV},
		{0x0001, REG_OP_SYS_CLK_DIV},
		{0x0004, REG_PRE_PLL_CLK_DIV},
		{0x0040, REG_PLL_MULTIPLIER},
		{0x0000, REG_GROUPED_PARAMETER_HOLD},
		{0x0100, REG_GROUPED_PARAMETER_HOLD},
	};
	static const struct cmd reg_init_end[] = {
		{0x0000, REG_GROUPED_PARAMETER_HOLD},
		{0x0301, 0x31AE},
		{0x0805, 0x3064},
		{0x0071, 0x3170},
		{0x10DE, REG_RESET_REGISTER},
		{0x0000, REG_MODE_SELECT},
		{0x0010, REG_PLL_MULTIPLIER},
		{0x0100, REG_MODE_SELECT},
	};

	FUNC2(gspca_dev, D_STREAM, "Encrypted begin, w = %u\n\n",
		  gspca_dev->pixfmt.width);
	FUNC4(gspca_dev, reg_init_begin, FUNC0(reg_init_begin));
	FUNC1(gspca_dev);
	FUNC4(gspca_dev, reg_init_end, FUNC0(reg_init_end));
	FUNC3(gspca_dev, 0x0100, REG_GROUPED_PARAMETER_HOLD);
	FUNC3(gspca_dev, 0x0000, REG_GROUPED_PARAMETER_HOLD);

	FUNC2(gspca_dev, D_STREAM, "Encrypted end\n\n");
}