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
struct cx25821_dev {int /*<<< orphan*/ * i2c_bus; } ;

/* Variables and functions */
 scalar_t__ COMB_2D_BLEND ; 
 scalar_t__ COMB_2D_HFD_CFG ; 
 scalar_t__ COMB_2D_HFS_CFG ; 
 scalar_t__ COMB_2D_LF_CFG ; 
 scalar_t__ COMB_FLAT_THRESH_CTRL ; 
 scalar_t__ COMB_MISC_CTRL ; 
 int FUNC0 (int /*<<< orphan*/ *,scalar_t__,int*) ; 
 int FUNC1 (int /*<<< orphan*/ *,scalar_t__,int) ; 

__attribute__((used)) static int FUNC2(struct cx25821_dev *dev, int dec)
{
	int ret_val = -1;
	u32 value = 0, tmp = 0;

	/* Setup for 2D threshold */
	ret_val = FUNC1(&dev->i2c_bus[0],
			COMB_2D_HFS_CFG + (0x200 * dec), 0x20002861);
	ret_val = FUNC1(&dev->i2c_bus[0],
			COMB_2D_HFD_CFG + (0x200 * dec), 0x20002861);
	ret_val = FUNC1(&dev->i2c_bus[0],
			COMB_2D_LF_CFG + (0x200 * dec), 0x200A1023);

	/* Setup flat chroma and luma thresholds */
	value = FUNC0(&dev->i2c_bus[0],
			COMB_FLAT_THRESH_CTRL + (0x200 * dec), &tmp);
	value &= 0x06230000;
	ret_val = FUNC1(&dev->i2c_bus[0],
			COMB_FLAT_THRESH_CTRL + (0x200 * dec), value);

	/* set comb 2D blend */
	ret_val = FUNC1(&dev->i2c_bus[0],
			COMB_2D_BLEND + (0x200 * dec), 0x210F0F0F);

	/* COMB MISC CONTROL */
	ret_val = FUNC1(&dev->i2c_bus[0],
			COMB_MISC_CTRL + (0x200 * dec), 0x41120A7F);

	return ret_val;
}