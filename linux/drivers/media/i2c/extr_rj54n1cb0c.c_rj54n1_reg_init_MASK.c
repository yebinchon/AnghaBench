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
struct rj54n1 {int auto_wb; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int DSP_RSTX ; 
 int E_EXCLK ; 
 int RESIZE_HOLD_SEL ; 
 int /*<<< orphan*/  RJ54N1_EXPOSURE_CONTROL ; 
 int /*<<< orphan*/  RJ54N1_FWFLG ; 
 int /*<<< orphan*/  RJ54N1_MIRROR_STILL_MODE ; 
 int /*<<< orphan*/  RJ54N1_RESET_STANDBY ; 
 int /*<<< orphan*/  RJ54N1_RESIZE_CONTROL ; 
 int /*<<< orphan*/  RJ54N1_SCALE_1_2_LEV ; 
 int /*<<< orphan*/  RJ54N1_SCALE_4_LEV ; 
 int /*<<< orphan*/  RJ54N1_WB_SEL_WEIGHT_I ; 
 int /*<<< orphan*/  RJ54N1_Y_GAIN ; 
 int SEN_RSTX ; 
 int TG_RSTX ; 
 int /*<<< orphan*/  bank_10 ; 
 int /*<<< orphan*/  bank_4 ; 
 int /*<<< orphan*/  bank_5 ; 
 int /*<<< orphan*/  bank_7 ; 
 int /*<<< orphan*/  bank_8 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct i2c_client*) ; 
 int FUNC6 (struct i2c_client*) ; 
 struct rj54n1* FUNC7 (struct i2c_client*) ; 

__attribute__((used)) static int FUNC8(struct i2c_client *client)
{
	struct rj54n1 *rj54n1 = FUNC7(client);
	int ret = FUNC6(client);

	if (!ret)
		ret = FUNC4(client, bank_7, FUNC0(bank_7));
	if (!ret)
		ret = FUNC4(client, bank_10, FUNC0(bank_10));

	/* Set binning divisors */
	if (!ret)
		ret = FUNC3(client, RJ54N1_SCALE_1_2_LEV, 3 | (7 << 4));
	if (!ret)
		ret = FUNC3(client, RJ54N1_SCALE_4_LEV, 0xf);

	/* Switch to fixed resize mode */
	if (!ret)
		ret = FUNC3(client, RJ54N1_RESIZE_CONTROL,
				RESIZE_HOLD_SEL | 1);

	/* Set gain */
	if (!ret)
		ret = FUNC3(client, RJ54N1_Y_GAIN, 0x84);

	/*
	 * Mirror the image back: default is upside down and left-to-right...
	 * Set manual preview / still shot switching
	 */
	if (!ret)
		ret = FUNC3(client, RJ54N1_MIRROR_STILL_MODE, 0x27);

	if (!ret)
		ret = FUNC4(client, bank_4, FUNC0(bank_4));

	/* Auto exposure area */
	if (!ret)
		ret = FUNC3(client, RJ54N1_EXPOSURE_CONTROL, 0x80);
	/* Check current auto WB config */
	if (!ret)
		ret = FUNC2(client, RJ54N1_WB_SEL_WEIGHT_I);
	if (ret >= 0) {
		rj54n1->auto_wb = ret & 0x80;
		ret = FUNC4(client, bank_5, FUNC0(bank_5));
	}
	if (!ret)
		ret = FUNC4(client, bank_8, FUNC0(bank_8));

	if (!ret)
		ret = FUNC3(client, RJ54N1_RESET_STANDBY,
				E_EXCLK | DSP_RSTX | SEN_RSTX);

	/* Commit init */
	if (!ret)
		ret = FUNC5(client);

	/* Take DSP, TG, sensor out of reset */
	if (!ret)
		ret = FUNC3(client, RJ54N1_RESET_STANDBY,
				E_EXCLK | DSP_RSTX | TG_RSTX | SEN_RSTX);

	/* Start register update? Same register as 0x?FE in many bank_* sets */
	if (!ret)
		ret = FUNC3(client, RJ54N1_FWFLG, 2);

	/* Constant taken from manufacturer's example */
	FUNC1(700);

	return ret;
}