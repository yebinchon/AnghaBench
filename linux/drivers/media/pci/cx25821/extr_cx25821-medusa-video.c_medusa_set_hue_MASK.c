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
 int /*<<< orphan*/  SIGNED_BYTE_MAX ; 
 int /*<<< orphan*/  SIGNED_BYTE_MIN ; 
 scalar_t__ VDEC_A_HUE_CTRL ; 
 int VIDEO_PROCAMP_MAX ; 
 int VIDEO_PROCAMP_MIN ; 
 int FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,scalar_t__,int*) ; 
 int FUNC2 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int FUNC3 (int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

int FUNC4(struct cx25821_dev *dev, int hue, int decoder)
{
	int ret_val = 0;
	int value = 0;
	u32 val = 0, tmp = 0;

	if ((hue > VIDEO_PROCAMP_MAX) || (hue < VIDEO_PROCAMP_MIN)) {
		return -1;
	}

	ret_val = FUNC3(VIDEO_PROCAMP_MIN, VIDEO_PROCAMP_MAX, hue,
			SIGNED_BYTE_MIN, SIGNED_BYTE_MAX, &value);

	value = FUNC0(value, 8);
	val = FUNC1(&dev->i2c_bus[0],
			VDEC_A_HUE_CTRL + (0x200 * decoder), &tmp);
	val &= 0xFFFFFF00;

	ret_val |= FUNC2(&dev->i2c_bus[0],
			VDEC_A_HUE_CTRL + (0x200 * decoder), val | value);

	return ret_val;
}