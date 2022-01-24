#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct solo_dev {int nr_chans; int /*<<< orphan*/  cur_disp_ch; TYPE_1__** v4l2_enc; int /*<<< orphan*/  video_type; int /*<<< orphan*/  vidq; } ;
struct TYPE_2__ {int /*<<< orphan*/  vidq; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  SOLO_VO_FMT_TYPE_NTSC ; 
 int /*<<< orphan*/  SOLO_VO_FMT_TYPE_PAL ; 
 int /*<<< orphan*/  FUNC0 (struct solo_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct solo_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct solo_dev*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (struct solo_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct solo_dev *solo_dev, bool is_50hz)
{
	int i;

	/* Make sure all video nodes are idle */
	if (FUNC5(&solo_dev->vidq))
		return -EBUSY;
	for (i = 0; i < solo_dev->nr_chans; i++)
		if (FUNC5(&solo_dev->v4l2_enc[i]->vidq))
			return -EBUSY;
	solo_dev->video_type = is_50hz ? SOLO_VO_FMT_TYPE_PAL :
					 SOLO_VO_FMT_TYPE_NTSC;
	/* Reconfigure for the new standard */
	FUNC0(solo_dev);
	FUNC1(solo_dev);
	FUNC2(solo_dev);
	for (i = 0; i < solo_dev->nr_chans; i++)
		FUNC3(solo_dev->v4l2_enc[i]);
	return FUNC4(solo_dev, solo_dev->cur_disp_ch);
}