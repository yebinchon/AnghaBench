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
 int ERANGE ; 
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
 int /*<<< orphan*/  FUNC10 (int) ; 
#define  V4L2_CID_BRIGHTNESS 132 
#define  V4L2_CID_CONTRAST 131 
#define  V4L2_CID_HUE 130 
#define  V4L2_CID_SATURATION 129 
#define  V4L2_CID_SHARPNESS 128 
 int /*<<< orphan*/  FUNC11 (struct solo_dev*,int) ; 
 int FUNC12 (struct solo_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct solo_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct solo_dev*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char) ; 

int FUNC15(struct solo_dev *solo_dev, u32 ctrl, u8 ch,
		      s32 val)
{
	char sval;
	u8 chip_num;

	/* Get the right chip and on-chip channel */
	chip_num = ch / 4;
	ch %= 4;

	if (val > 255 || val < 0)
		return -ERANGE;

	switch (ctrl) {
	case V4L2_CID_SHARPNESS:
		/* Only 286x has sharpness */
		if (FUNC11(solo_dev, chip_num)) {
			u8 v = FUNC12(solo_dev, SOLO_I2C_TW,
						 FUNC7(chip_num),
						 FUNC5(chip_num));
			v &= 0xf0;
			v |= val;
			FUNC13(solo_dev, SOLO_I2C_TW,
					   FUNC7(chip_num),
					   FUNC5(chip_num), v);
		} else {
			return -EINVAL;
		}
		break;

	case V4L2_CID_HUE:
		if (FUNC11(solo_dev, chip_num))
			sval = val - 128;
		else
			sval = (char)val;
		FUNC14(solo_dev, chip_num, FUNC2(ch),
			     FUNC9(ch), sval);

		break;

	case V4L2_CID_SATURATION:
		/* 286x chips have a U and V component for saturation */
		if (FUNC11(solo_dev, chip_num)) {
			FUNC13(solo_dev, SOLO_I2C_TW,
					   FUNC7(chip_num),
					   FUNC3(ch), val);
		}
		FUNC14(solo_dev, chip_num, FUNC4(ch),
			     FUNC10(ch), val);

		break;

	case V4L2_CID_CONTRAST:
		FUNC14(solo_dev, chip_num, FUNC1(ch),
			     FUNC8(ch), val);
		break;

	case V4L2_CID_BRIGHTNESS:
		if (FUNC11(solo_dev, chip_num))
			sval = val - 128;
		else
			sval = (char)val;
		FUNC14(solo_dev, chip_num, FUNC0(ch),
			     FUNC6(ch), sval);

		break;
	default:
		return -EINVAL;
	}

	return 0;
}