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
struct ov5640_dev {int prev_sysclk; int prev_hts; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  OV5640_REG_AEC_B50_STEP ; 
 int /*<<< orphan*/  OV5640_REG_AEC_B60_STEP ; 
 int /*<<< orphan*/  OV5640_REG_AEC_CTRL0D ; 
 int /*<<< orphan*/  OV5640_REG_AEC_CTRL0E ; 
 int FUNC0 (struct ov5640_dev*) ; 
 int FUNC1 (struct ov5640_dev*) ; 
 int FUNC2 (struct ov5640_dev*) ; 
 int FUNC3 (struct ov5640_dev*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct ov5640_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct ov5640_dev *sensor)
{
	u32 band_step60, max_band60, band_step50, max_band50, prev_vts;
	int ret;

	/* read preview PCLK */
	ret = FUNC1(sensor);
	if (ret < 0)
		return ret;
	if (ret == 0)
		return -EINVAL;
	sensor->prev_sysclk = ret;
	/* read preview HTS */
	ret = FUNC0(sensor);
	if (ret < 0)
		return ret;
	if (ret == 0)
		return -EINVAL;
	sensor->prev_hts = ret;

	/* read preview VTS */
	ret = FUNC2(sensor);
	if (ret < 0)
		return ret;
	prev_vts = ret;

	/* calculate banding filter */
	/* 60Hz */
	band_step60 = sensor->prev_sysclk * 100 / sensor->prev_hts * 100 / 120;
	ret = FUNC4(sensor, OV5640_REG_AEC_B60_STEP, band_step60);
	if (ret)
		return ret;
	if (!band_step60)
		return -EINVAL;
	max_band60 = (int)((prev_vts - 4) / band_step60);
	ret = FUNC3(sensor, OV5640_REG_AEC_CTRL0D, max_band60);
	if (ret)
		return ret;

	/* 50Hz */
	band_step50 = sensor->prev_sysclk * 100 / sensor->prev_hts;
	ret = FUNC4(sensor, OV5640_REG_AEC_B50_STEP, band_step50);
	if (ret)
		return ret;
	if (!band_step50)
		return -EINVAL;
	max_band50 = (int)((prev_vts - 4) / band_step50);
	return FUNC3(sensor, OV5640_REG_AEC_CTRL0E, max_band50);
}