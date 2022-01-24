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
struct solo_dev {scalar_t__ type; unsigned long video_hsize; unsigned long video_vsize; int nr_chans; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SOLO_CAP_BASE ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  SOLO_CAP_BTW ; 
 int FUNC1 (struct solo_dev*) ; 
 int FUNC2 (struct solo_dev*) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int SOLO_CAP_PAGE_SIZE ; 
 int FUNC5 (int) ; 
 scalar_t__ SOLO_DEV_6010 ; 
 scalar_t__ SOLO_DEV_6110 ; 
 int FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  SOLO_DIM_PROG ; 
 int /*<<< orphan*/  SOLO_DIM_SCALE1 ; 
 int /*<<< orphan*/  SOLO_DIM_SCALE2 ; 
 int /*<<< orphan*/  SOLO_DIM_SCALE3 ; 
 int /*<<< orphan*/  SOLO_DIM_SCALE4 ; 
 int /*<<< orphan*/  SOLO_DIM_SCALE5 ; 
 int FUNC7 (unsigned long) ; 
 int FUNC8 (unsigned long) ; 
 int SOLO_EOSD_EXT_ADDR ; 
 int FUNC9 (struct solo_dev*) ; 
 int /*<<< orphan*/  SOLO_VE_OSD_BASE ; 
 int /*<<< orphan*/  SOLO_VE_OSD_CH ; 
 int /*<<< orphan*/  SOLO_VE_OSD_CLR ; 
 int SOLO_VE_OSD_H_SHADOW ; 
 int /*<<< orphan*/  SOLO_VE_OSD_OPT ; 
 int SOLO_VE_OSD_V_DOUBLE ; 
 int SOLO_VE_OSD_V_SHADOW ; 
 unsigned long VI_PROG_HSIZE ; 
 unsigned long VI_PROG_VSIZE ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 void* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct solo_dev*,int,void*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct solo_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC14(struct solo_dev *solo_dev)
{
	unsigned long height;
	unsigned long width;
	void *buf;
	int i;

	FUNC13(solo_dev, SOLO_CAP_BASE,
		       FUNC4((FUNC2(solo_dev)
					  - SOLO_CAP_PAGE_SIZE) >> 16)
		       | FUNC0(FUNC1(solo_dev) >> 16));

	/* XXX: Undocumented bits at b17 and b24 */
	if (solo_dev->type == SOLO_DEV_6110) {
		/* NOTE: Ref driver has (62 << 24) here as well, but it causes
		 * wacked out frame timing on 4-port 6110. */
		FUNC13(solo_dev, SOLO_CAP_BTW,
			       (1 << 17) | FUNC5(2) |
			       FUNC3(36));
	} else {
		FUNC13(solo_dev, SOLO_CAP_BTW,
			       (1 << 17) | FUNC5(2) |
			       FUNC3(32));
	}

	/* Set scale 1, 9 dimension */
	width = solo_dev->video_hsize;
	height = solo_dev->video_vsize;
	FUNC13(solo_dev, SOLO_DIM_SCALE1,
		       FUNC6(width / 16) |
		       FUNC8(height / 8) |
		       FUNC7(height / 16));

	/* Set scale 2, 10 dimension */
	width = solo_dev->video_hsize / 2;
	height = solo_dev->video_vsize;
	FUNC13(solo_dev, SOLO_DIM_SCALE2,
		       FUNC6(width / 16) |
		       FUNC8(height / 8) |
		       FUNC7(height / 16));

	/* Set scale 3, 11 dimension */
	width = solo_dev->video_hsize / 2;
	height = solo_dev->video_vsize / 2;
	FUNC13(solo_dev, SOLO_DIM_SCALE3,
		       FUNC6(width / 16) |
		       FUNC8(height / 8) |
		       FUNC7(height / 16));

	/* Set scale 4, 12 dimension */
	width = solo_dev->video_hsize / 3;
	height = solo_dev->video_vsize / 3;
	FUNC13(solo_dev, SOLO_DIM_SCALE4,
		       FUNC6(width / 16) |
		       FUNC8(height / 8) |
		       FUNC7(height / 16));

	/* Set scale 5, 13 dimension */
	width = solo_dev->video_hsize / 4;
	height = solo_dev->video_vsize / 2;
	FUNC13(solo_dev, SOLO_DIM_SCALE5,
		       FUNC6(width / 16) |
		       FUNC8(height / 8) |
		       FUNC7(height / 16));

	/* Progressive */
	width = VI_PROG_HSIZE;
	height = VI_PROG_VSIZE;
	FUNC13(solo_dev, SOLO_DIM_PROG,
		       FUNC6(width / 16) |
		       FUNC8(height / 16) |
		       FUNC7(height / 16));

	/* Clear OSD */
	FUNC13(solo_dev, SOLO_VE_OSD_CH, 0);
	FUNC13(solo_dev, SOLO_VE_OSD_BASE, SOLO_EOSD_EXT_ADDR >> 16);
	FUNC13(solo_dev, SOLO_VE_OSD_CLR,
		       0xF0 << 16 | 0x80 << 8 | 0x80);

	if (solo_dev->type == SOLO_DEV_6010)
		FUNC13(solo_dev, SOLO_VE_OSD_OPT,
			       SOLO_VE_OSD_H_SHADOW | SOLO_VE_OSD_V_SHADOW);
	else
		FUNC13(solo_dev, SOLO_VE_OSD_OPT, SOLO_VE_OSD_V_DOUBLE
			       | SOLO_VE_OSD_H_SHADOW | SOLO_VE_OSD_V_SHADOW);

	/* Clear OSG buffer */
	buf = FUNC11(FUNC9(solo_dev), GFP_KERNEL);
	if (!buf)
		return;

	for (i = 0; i < solo_dev->nr_chans; i++) {
		FUNC12(solo_dev, 1, buf,
			     SOLO_EOSD_EXT_ADDR +
			     (FUNC9(solo_dev) * i),
			     FUNC9(solo_dev), 0, 0);
	}
	FUNC10(buf);
}