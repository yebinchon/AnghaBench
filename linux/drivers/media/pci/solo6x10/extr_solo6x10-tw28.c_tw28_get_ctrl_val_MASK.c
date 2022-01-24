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
typedef  int u32 ;
struct solo_dev {int dummy; } ;
typedef  int s32 ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SOLO_I2C_TW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
#define  V4L2_CID_BRIGHTNESS 132 
#define  V4L2_CID_CONTRAST 131 
#define  V4L2_CID_HUE 130 
#define  V4L2_CID_SATURATION 129 
#define  V4L2_CID_SHARPNESS 128 
 int /*<<< orphan*/  FUNC10 (struct solo_dev*,int) ; 
 int FUNC11 (struct solo_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC12 (struct solo_dev*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC13(struct solo_dev *solo_dev, u32 ctrl, u8 ch,
		      s32 *val)
{
	u8 rval, chip_num;

	/* Get the right chip and on-chip channel */
	chip_num = ch / 4;
	ch %= 4;

	switch (ctrl) {
	case V4L2_CID_SHARPNESS:
		/* Only 286x has sharpness */
		if (FUNC10(solo_dev, chip_num)) {
			rval = FUNC11(solo_dev, SOLO_I2C_TW,
						 FUNC6(chip_num),
						 FUNC4(chip_num));
			*val = rval & 0x0f;
		} else
			*val = 0;
		break;
	case V4L2_CID_HUE:
		rval = FUNC12(solo_dev, chip_num, FUNC2(ch),
				   FUNC8(ch));
		if (FUNC10(solo_dev, chip_num))
			*val = (s32)((char)rval) + 128;
		else
			*val = rval;
		break;
	case V4L2_CID_SATURATION:
		*val = FUNC12(solo_dev, chip_num,
				   FUNC3(ch),
				   FUNC9(ch));
		break;
	case V4L2_CID_CONTRAST:
		*val = FUNC12(solo_dev, chip_num,
				   FUNC1(ch),
				   FUNC7(ch));
		break;
	case V4L2_CID_BRIGHTNESS:
		rval = FUNC12(solo_dev, chip_num,
				   FUNC0(ch),
				   FUNC5(ch));
		if (FUNC10(solo_dev, chip_num))
			*val = (s32)((char)rval) + 128;
		else
			*val = rval;
		break;
	default:
		return -EINVAL;
	}

	return 0;
}