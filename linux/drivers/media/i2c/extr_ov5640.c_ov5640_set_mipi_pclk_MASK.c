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
typedef  int u8 ;
struct ov5640_mode_info {scalar_t__ dn_mode; scalar_t__ id; } ;
struct ov5640_dev {struct ov5640_mode_info* current_mode; } ;

/* Variables and functions */
 int OV5640_MIPI_DIV_PCLK ; 
 int OV5640_MIPI_DIV_SCLK ; 
 scalar_t__ OV5640_MODE_720P_1280_720 ; 
 int OV5640_PLL_CTRL0_MIPI_MODE_8BIT ; 
 int OV5640_PLL_CTRL3_PLL_ROOT_DIV_2 ; 
 int OV5640_PLL_SYS_ROOT_DIVIDER_BYPASS ; 
 int /*<<< orphan*/  OV5640_REG_SC_PLL_CTRL0 ; 
 int /*<<< orphan*/  OV5640_REG_SC_PLL_CTRL1 ; 
 int /*<<< orphan*/  OV5640_REG_SC_PLL_CTRL2 ; 
 int /*<<< orphan*/  OV5640_REG_SC_PLL_CTRL3 ; 
 int /*<<< orphan*/  OV5640_REG_SYS_ROOT_DIVIDER ; 
 scalar_t__ SCALING ; 
 int /*<<< orphan*/  FUNC0 (struct ov5640_dev*,unsigned long,int*,int*,int*) ; 
 int FUNC1 (struct ov5640_dev*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC2(struct ov5640_dev *sensor,
				unsigned long rate)
{
	const struct ov5640_mode_info *mode = sensor->current_mode;
	u8 prediv, mult, sysdiv;
	u8 mipi_div;
	int ret;

	/*
	 * 1280x720 is reported to use 'SUBSAMPLING' only,
	 * but according to the sensor manual it goes through the
	 * scaler before subsampling.
	 */
	if (mode->dn_mode == SCALING ||
	   (mode->id == OV5640_MODE_720P_1280_720))
		mipi_div = OV5640_MIPI_DIV_SCLK;
	else
		mipi_div = OV5640_MIPI_DIV_PCLK;

	FUNC0(sensor, rate, &prediv, &mult, &sysdiv);

	ret = FUNC1(sensor, OV5640_REG_SC_PLL_CTRL0,
			     0x0f, OV5640_PLL_CTRL0_MIPI_MODE_8BIT);

	ret = FUNC1(sensor, OV5640_REG_SC_PLL_CTRL1,
			     0xff, sysdiv << 4 | mipi_div);
	if (ret)
		return ret;

	ret = FUNC1(sensor, OV5640_REG_SC_PLL_CTRL2, 0xff, mult);
	if (ret)
		return ret;

	ret = FUNC1(sensor, OV5640_REG_SC_PLL_CTRL3,
			     0x1f, OV5640_PLL_CTRL3_PLL_ROOT_DIV_2 | prediv);
	if (ret)
		return ret;

	return FUNC1(sensor, OV5640_REG_SYS_ROOT_DIVIDER,
			      0x30, OV5640_PLL_SYS_ROOT_DIVIDER_BYPASS);
}