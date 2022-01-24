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
struct solo_dev {int video_hsize; scalar_t__ video_type; int video_vsize; int fps; int nr_chans; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ SOLO_VO_FMT_TYPE_NTSC ; 
 int /*<<< orphan*/  FUNC1 (struct solo_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct solo_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct solo_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct solo_dev*) ; 

int FUNC5(struct solo_dev *solo_dev)
{
	int i;

	solo_dev->video_hsize = 704;
	if (solo_dev->video_type == SOLO_VO_FMT_TYPE_NTSC) {
		solo_dev->video_vsize = 240;
		solo_dev->fps = 30;
	} else {
		solo_dev->video_vsize = 288;
		solo_dev->fps = 25;
	}

	FUNC3(solo_dev);
	FUNC1(solo_dev);
	FUNC4(solo_dev);

	for (i = 0; i < solo_dev->nr_chans; i++)
		FUNC2(solo_dev, FUNC0(i), 1);

	return 0;
}