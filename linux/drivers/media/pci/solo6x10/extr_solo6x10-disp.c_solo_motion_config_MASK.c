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
struct solo_dev {int nr_chans; int video_hsize; } ;

/* Variables and functions */
 int /*<<< orphan*/  SOLO_DEF_MOT_THRESH ; 
 int FUNC0 (struct solo_dev*) ; 
 int SOLO_MOT_FLAG_AREA ; 
 int SOLO_MOT_FLAG_SIZE ; 
 int SOLO_MOT_THRESH_SIZE ; 
 int /*<<< orphan*/  SOLO_VI_MOTION_BAR ; 
 int /*<<< orphan*/  SOLO_VI_MOTION_BORDER ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  SOLO_VI_MOT_ADR ; 
 int /*<<< orphan*/  SOLO_VI_MOT_CTRL ; 
 int /*<<< orphan*/  FUNC5 (struct solo_dev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct solo_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct solo_dev*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct solo_dev *solo_dev)
{
	int i;

	for (i = 0; i < solo_dev->nr_chans; i++) {
		/* Clear motion flag area */
		FUNC5(solo_dev, i * SOLO_MOT_FLAG_SIZE, 0x0000,
				    SOLO_MOT_FLAG_SIZE);

		/* Clear working cache table */
		FUNC5(solo_dev, SOLO_MOT_FLAG_AREA +
				    (i * SOLO_MOT_THRESH_SIZE * 2) +
				    SOLO_MOT_THRESH_SIZE, 0x0000,
				    SOLO_MOT_THRESH_SIZE);

		/* Set default threshold table */
		FUNC7(solo_dev, i, SOLO_DEF_MOT_THRESH);
	}

	/* Default motion settings */
	FUNC6(solo_dev, SOLO_VI_MOT_ADR, FUNC1(0) |
		       (FUNC0(solo_dev) >> 16));
	FUNC6(solo_dev, SOLO_VI_MOT_CTRL,
		       FUNC2(3) |
		       FUNC4(solo_dev->video_hsize / 16)
		       /* | SOLO_VI_MOTION_INTR_START_STOP */
		       | FUNC3(10));

	FUNC6(solo_dev, SOLO_VI_MOTION_BORDER, 0);
	FUNC6(solo_dev, SOLO_VI_MOTION_BAR, 0);
}