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
struct solo_dev {int nr_chans; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  SOLO_VO_BORDER_FILL_MASK ; 
 int /*<<< orphan*/  SOLO_VO_BORDER_LINE_MASK ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  SOLO_VO_DISP_CTRL ; 
 int /*<<< orphan*/  SOLO_VO_FREEZE_CTRL ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  SOLO_VO_ZOOM_CTRL ; 
 int /*<<< orphan*/  FUNC8 (struct solo_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC9(struct solo_dev *solo_dev)
{
	int i;

	FUNC8(solo_dev, SOLO_VO_DISP_CTRL, 0);
	FUNC8(solo_dev, SOLO_VO_ZOOM_CTRL, 0);
	FUNC8(solo_dev, SOLO_VO_FREEZE_CTRL, 0);

	for (i = 0; i < solo_dev->nr_chans; i++) {
		FUNC8(solo_dev, FUNC0(i), 0);
		FUNC8(solo_dev, FUNC1(i), 0);
		FUNC8(solo_dev, FUNC2(i), 0);
	}

	/* Set default border */
	for (i = 0; i < 5; i++)
		FUNC8(solo_dev, FUNC3(i), 0);

	for (i = 0; i < 5; i++)
		FUNC8(solo_dev, FUNC4(i), 0);

	FUNC8(solo_dev, SOLO_VO_BORDER_LINE_MASK, 0);
	FUNC8(solo_dev, SOLO_VO_BORDER_FILL_MASK, 0);

	FUNC8(solo_dev, FUNC5(0), 0);
	FUNC8(solo_dev, FUNC6(0), 0);
	FUNC8(solo_dev, FUNC7(0), 0);

	FUNC8(solo_dev, FUNC5(1), 0);
	FUNC8(solo_dev, FUNC6(1), 0);
	FUNC8(solo_dev, FUNC7(1), 0);
}