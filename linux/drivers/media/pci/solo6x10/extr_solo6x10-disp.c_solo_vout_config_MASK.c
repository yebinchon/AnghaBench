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
struct solo_dev {int vout_hstart; int vout_vstart; int video_type; int nr_chans; scalar_t__ video_vsize; scalar_t__ video_hsize; } ;

/* Variables and functions */
 int /*<<< orphan*/  SOLO_DISP_EXT_ADDR ; 
 int /*<<< orphan*/  SOLO_VI_CH_ENA ; 
 int /*<<< orphan*/  SOLO_VI_WIN_SW ; 
 int /*<<< orphan*/  SOLO_VO_ACT_H ; 
 int /*<<< orphan*/  SOLO_VO_ACT_V ; 
 int /*<<< orphan*/  SOLO_VO_BKG_COLOR ; 
 int /*<<< orphan*/  SOLO_VO_BORDER_FILL_COLOR ; 
 int /*<<< orphan*/  SOLO_VO_BORDER_LINE_COLOR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SOLO_VO_DISP_CTRL ; 
 int /*<<< orphan*/  SOLO_VO_DISP_ERASE ; 
 int FUNC1 (int) ; 
 int SOLO_VO_DISP_ERASE_ON ; 
 int SOLO_VO_DISP_ON ; 
 int /*<<< orphan*/  SOLO_VO_FMT_ENC ; 
 int /*<<< orphan*/  SOLO_VO_FREEZE_CTRL ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (int) ; 
 int FUNC4 (scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SOLO_VO_RANGE_HV ; 
 int SOLO_VO_USER_COLOR_SET_NAH ; 
 int SOLO_VO_USER_COLOR_SET_NAV ; 
 int FUNC8 (scalar_t__) ; 
 int FUNC9 (int) ; 
 int FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  SOLO_VO_ZOOM_CTRL ; 
 int /*<<< orphan*/  FUNC11 (struct solo_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct solo_dev*) ; 

__attribute__((used)) static void FUNC13(struct solo_dev *solo_dev)
{
	solo_dev->vout_hstart = 6;
	solo_dev->vout_vstart = 8;

	FUNC11(solo_dev, SOLO_VO_FMT_ENC,
		       solo_dev->video_type |
		       SOLO_VO_USER_COLOR_SET_NAV |
		       SOLO_VO_USER_COLOR_SET_NAH |
		       FUNC7(0) |
		       FUNC5(0) |
		       FUNC6(0));

	FUNC11(solo_dev, SOLO_VO_ACT_H,
		       FUNC3(solo_dev->vout_hstart) |
		       FUNC4(solo_dev->vout_hstart +
				      solo_dev->video_hsize));

	FUNC11(solo_dev, SOLO_VO_ACT_V,
		       FUNC9(solo_dev->vout_vstart) |
		       FUNC10(solo_dev->vout_vstart +
				      solo_dev->video_vsize));

	FUNC11(solo_dev, SOLO_VO_RANGE_HV,
		       FUNC2(solo_dev->video_hsize) |
		       FUNC8(solo_dev->video_vsize));

	/* Border & background colors */
	FUNC11(solo_dev, SOLO_VO_BORDER_LINE_COLOR,
		       (0xa0 << 24) | (0x88 << 16) | (0xa0 << 8) | 0x88);
	FUNC11(solo_dev, SOLO_VO_BORDER_FILL_COLOR,
		       (0x10 << 24) | (0x8f << 16) | (0x10 << 8) | 0x8f);
	FUNC11(solo_dev, SOLO_VO_BKG_COLOR,
		       (16 << 24) | (128 << 16) | (16 << 8) | 128);

	FUNC11(solo_dev, SOLO_VO_DISP_ERASE, SOLO_VO_DISP_ERASE_ON);

	FUNC11(solo_dev, SOLO_VI_WIN_SW, 0);

	FUNC11(solo_dev, SOLO_VO_ZOOM_CTRL, 0);
	FUNC11(solo_dev, SOLO_VO_FREEZE_CTRL, 0);

	FUNC11(solo_dev, SOLO_VO_DISP_CTRL, SOLO_VO_DISP_ON |
		       FUNC1(8) |
		       FUNC0(SOLO_DISP_EXT_ADDR));


	FUNC12(solo_dev);

	/* Enable channels we support */
	FUNC11(solo_dev, SOLO_VI_CH_ENA,
		       (1 << solo_dev->nr_chans) - 1);
}