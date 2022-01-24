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
struct ml86v7667_priv {int std; int /*<<< orphan*/  sd; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int ADC2_CLAMP_VOLTAGE_MASK ; 
 int /*<<< orphan*/  ADC2_REG ; 
 int CLC_CONTRAST_ONOFF ; 
 int /*<<< orphan*/  CLC_REG ; 
 int MRA_INPUT_MODE_MASK ; 
 int MRA_ITUR_BT656 ; 
 int MRA_NTSC_BT601 ; 
 int MRA_OUTPUT_MODE_MASK ; 
 int MRA_PAL_BT601 ; 
 int /*<<< orphan*/  MRA_REG ; 
 int MRA_REGISTER_MODE ; 
 int MRC_AUTOSELECT ; 
 int /*<<< orphan*/  MRC_REG ; 
 int PLLR1_FIXED_CLOCK ; 
 int /*<<< orphan*/  PLLR1_REG ; 
 int SSEPL_LUMINANCE_ONOFF ; 
 int /*<<< orphan*/  SSEPL_REG ; 
 int STATUS_NTSCPAL ; 
 int /*<<< orphan*/  STATUS_REG ; 
 int V4L2_STD_525_60 ; 
 int V4L2_STD_625_50 ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int,int) ; 
 struct i2c_client* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct ml86v7667_priv *priv)
{
	struct i2c_client *client = FUNC3(&priv->sd);
	int val;
	int ret;

	/* BT.656-4 output mode, register mode */
	ret = FUNC2(client, MRA_REG,
				 MRA_OUTPUT_MODE_MASK | MRA_REGISTER_MODE,
				 MRA_ITUR_BT656 | MRA_REGISTER_MODE);

	/* PLL circuit fixed clock, 32MHz */
	ret |= FUNC2(client, PLLR1_REG, PLLR1_FIXED_CLOCK,
				  PLLR1_FIXED_CLOCK);

	/* ADC2 clamping voltage maximum  */
	ret |= FUNC2(client, ADC2_REG, ADC2_CLAMP_VOLTAGE_MASK,
				  FUNC0(7));

	/* enable luminance function */
	ret |= FUNC2(client, SSEPL_REG, SSEPL_LUMINANCE_ONOFF,
				  SSEPL_LUMINANCE_ONOFF);

	/* enable contrast function */
	ret |= FUNC2(client, CLC_REG, CLC_CONTRAST_ONOFF, 0);

	/*
	 * PAL/NTSC autodetection is enabled after reset,
	 * set the autodetected std in manual std mode and
	 * disable autodetection
	 */
	val = FUNC1(client, STATUS_REG);
	if (val < 0)
		return val;

	priv->std = val & STATUS_NTSCPAL ? V4L2_STD_625_50 : V4L2_STD_525_60;
	ret |= FUNC2(client, MRC_REG, MRC_AUTOSELECT, 0);

	val = priv->std & V4L2_STD_525_60 ? MRA_NTSC_BT601 : MRA_PAL_BT601;
	ret |= FUNC2(client, MRA_REG, MRA_INPUT_MODE_MASK, val);

	return ret;
}