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
typedef  scalar_t__ u16 ;
struct s5k6aa {int mclk_frequency; int pclk_fmin; int pclk_fmax; int clk_fop; int /*<<< orphan*/  sd; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned long MAX_MCLK_FREQ_KHZ ; 
 unsigned long MIN_MCLK_FREQ_KHZ ; 
 int PCLK_FREQ_MAX ; 
 int PCLK_FREQ_MIN ; 
 int /*<<< orphan*/  REG_I_ERROR_INFO ; 
 int /*<<< orphan*/  REG_I_INCLK_FREQ_H ; 
 int /*<<< orphan*/  REG_I_INCLK_FREQ_L ; 
 int /*<<< orphan*/  REG_I_INIT_PARAMS_UPDATED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_I_USE_NPVI_CLOCKS ; 
 int SYS_PLL_OUT_FREQ ; 
 scalar_t__ FUNC3 (int,char*,unsigned long) ; 
 int FUNC4 (struct i2c_client*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC5 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 struct i2c_client* FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct s5k6aa *s5k6aa)
{
	struct i2c_client *c = FUNC6(&s5k6aa->sd);
	unsigned long fmclk = s5k6aa->mclk_frequency / 1000;
	u16 status;
	int ret;

	if (FUNC3(fmclk < MIN_MCLK_FREQ_KHZ || fmclk > MAX_MCLK_FREQ_KHZ,
		 "Invalid clock frequency: %ld\n", fmclk))
		return -EINVAL;

	s5k6aa->pclk_fmin = PCLK_FREQ_MIN;
	s5k6aa->pclk_fmax = PCLK_FREQ_MAX;
	s5k6aa->clk_fop = SYS_PLL_OUT_FREQ;

	/* External input clock frequency in kHz */
	ret = FUNC5(c, REG_I_INCLK_FREQ_H, fmclk >> 16);
	if (!ret)
		ret = FUNC5(c, REG_I_INCLK_FREQ_L, fmclk & 0xFFFF);
	if (!ret)
		ret = FUNC5(c, REG_I_USE_NPVI_CLOCKS, 1);
	/* Internal PLL frequency */
	if (!ret)
		ret = FUNC5(c, FUNC2(0), s5k6aa->clk_fop);
	if (!ret)
		ret = FUNC5(c, FUNC1(0),
				   s5k6aa->pclk_fmin);
	if (!ret)
		ret = FUNC5(c, FUNC0(0),
				   s5k6aa->pclk_fmax);
	if (!ret)
		ret = FUNC5(c, REG_I_INIT_PARAMS_UPDATED, 1);
	if (!ret)
		ret = FUNC4(c, REG_I_ERROR_INFO, &status);

	return ret ? ret : (status ? -EINVAL : 0);
}