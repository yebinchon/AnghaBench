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
struct solo_dev {int vin_hstart; int vin_vstart; int vout_hstart; int vout_vstart; scalar_t__ type; scalar_t__ video_type; scalar_t__ video_vsize; } ;

/* Variables and functions */
 scalar_t__ SOLO_DEV_6010 ; 
 scalar_t__ SOLO_PROGRESSIVE_VSIZE ; 
 int /*<<< orphan*/  SOLO_SYS_VCLK ; 
 int /*<<< orphan*/  SOLO_VCLK_DELAY ; 
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SOLO_VI_ACT_I_P ; 
 int /*<<< orphan*/  SOLO_VI_ACT_I_S ; 
 int /*<<< orphan*/  SOLO_VI_ACT_P ; 
 int /*<<< orphan*/  SOLO_VI_CH_FORMAT ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SOLO_VI_FMT_CFG ; 
 int FUNC10 (int) ; 
 int /*<<< orphan*/  SOLO_VI_PAGE_SW ; 
 int /*<<< orphan*/  SOLO_VI_PB_ACT_H ; 
 int /*<<< orphan*/  SOLO_VI_PB_ACT_V ; 
 int /*<<< orphan*/  SOLO_VI_PB_CONFIG ; 
 int FUNC11 (int) ; 
 int FUNC12 (int) ; 
 int FUNC13 (int) ; 
 int SOLO_VI_PB_PAL ; 
 int /*<<< orphan*/  SOLO_VI_PB_RANGE_HV ; 
 int SOLO_VI_PB_USER_MODE ; 
 int FUNC14 (int) ; 
 int FUNC15 (int) ; 
 int FUNC16 (int) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int FUNC18 (int) ; 
 int FUNC19 (scalar_t__) ; 
 scalar_t__ SOLO_VO_FMT_TYPE_NTSC ; 
 int /*<<< orphan*/  FUNC20 (struct solo_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC21(struct solo_dev *solo_dev)
{
	solo_dev->vin_hstart = 8;
	solo_dev->vin_vstart = 2;

	FUNC20(solo_dev, SOLO_SYS_VCLK,
		       FUNC0(2) |
		       FUNC8(SOLO_VCLK_DELAY) |
		       FUNC7(SOLO_VCLK_DELAY) |
		       FUNC6(SOLO_VCLK_DELAY) |
		       FUNC5(SOLO_VCLK_DELAY) |
		       FUNC4(SOLO_VCLK_DELAY) |
		       FUNC3(SOLO_VCLK_DELAY) |
		       FUNC2(SOLO_VCLK_DELAY) |
		       FUNC1(SOLO_VCLK_DELAY));

	FUNC20(solo_dev, SOLO_VI_ACT_I_P,
		       FUNC10(solo_dev->vin_hstart) |
		       FUNC18(solo_dev->vin_vstart) |
		       FUNC19(solo_dev->vin_vstart +
				      solo_dev->video_vsize));

	FUNC20(solo_dev, SOLO_VI_ACT_I_S,
		       FUNC10(solo_dev->vout_hstart) |
		       FUNC18(solo_dev->vout_vstart) |
		       FUNC19(solo_dev->vout_vstart +
				      solo_dev->video_vsize));

	FUNC20(solo_dev, SOLO_VI_ACT_P,
		       FUNC10(0) |
		       FUNC18(1) |
		       FUNC19(SOLO_PROGRESSIVE_VSIZE));

	FUNC20(solo_dev, SOLO_VI_CH_FORMAT,
		       FUNC9(0) | FUNC17(0));

	/* On 6110, initialize mozaic darkness strength */
	if (solo_dev->type == SOLO_DEV_6010)
		FUNC20(solo_dev, SOLO_VI_FMT_CFG, 0);
	else
		FUNC20(solo_dev, SOLO_VI_FMT_CFG, 16 << 22);

	FUNC20(solo_dev, SOLO_VI_PAGE_SW, 2);

	if (solo_dev->video_type == SOLO_VO_FMT_TYPE_NTSC) {
		FUNC20(solo_dev, SOLO_VI_PB_CONFIG,
			       SOLO_VI_PB_USER_MODE);
		FUNC20(solo_dev, SOLO_VI_PB_RANGE_HV,
			       FUNC11(858) | FUNC14(246));
		FUNC20(solo_dev, SOLO_VI_PB_ACT_V,
			       FUNC15(4) |
			       FUNC16(4 + 240));
	} else {
		FUNC20(solo_dev, SOLO_VI_PB_CONFIG,
			       SOLO_VI_PB_USER_MODE | SOLO_VI_PB_PAL);
		FUNC20(solo_dev, SOLO_VI_PB_RANGE_HV,
			       FUNC11(864) | FUNC14(294));
		FUNC20(solo_dev, SOLO_VI_PB_ACT_V,
			       FUNC15(4) |
			       FUNC16(4 + 288));
	}
	FUNC20(solo_dev, SOLO_VI_PB_ACT_H, FUNC12(16) |
		       FUNC13(16 + 720));
}