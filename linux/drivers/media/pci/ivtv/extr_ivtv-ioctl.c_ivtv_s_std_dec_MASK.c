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
typedef  int v4l2_std_id ;
struct TYPE_2__ {int width; int height; scalar_t__ top; scalar_t__ left; } ;
struct yuv_playback_info {int osd_full_w; int osd_full_h; TYPE_1__ main_rect; } ;
struct ivtv {int std_out; int is_out_60hz; int is_out_50hz; int /*<<< orphan*/  osd_info; TYPE_1__ main_rect; int /*<<< orphan*/  serialize_lock; int /*<<< orphan*/  vsync_waitq; struct yuv_playback_info yuv_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  CX2341X_DEC_SET_STANDARD ; 
 int /*<<< orphan*/  CX2341X_OSD_SET_FRAMEBUFFER_WINDOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IVTV_REG_DEC_LINE_FIELD ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int V4L2_STD_525_60 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ivtv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ivtv*,int /*<<< orphan*/ ,int,int,...) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s_std_output ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  video ; 
 int /*<<< orphan*/  wait ; 

void FUNC11(struct ivtv *itv, v4l2_std_id std)
{
	struct yuv_playback_info *yi = &itv->yuv_info;
	FUNC0(wait);
	int f;

	/* set display standard */
	itv->std_out = std;
	itv->is_out_60hz = (std & V4L2_STD_525_60) ? 1 : 0;
	itv->is_out_50hz = !itv->is_out_60hz;
	FUNC3(itv, video, s_std_output, itv->std_out);

	/*
	 * The next firmware call is time sensitive. Time it to
	 * avoid risk of a hard lock, by trying to ensure the call
	 * happens within the first 100 lines of the top field.
	 * Make 4 attempts to sync to the decoder before giving up.
	 */
	FUNC7(&itv->serialize_lock);
	for (f = 0; f < 4; f++) {
		FUNC8(&itv->vsync_waitq, &wait,
				TASK_UNINTERRUPTIBLE);
		if ((FUNC9(IVTV_REG_DEC_LINE_FIELD) >> 16) < 100)
			break;
		FUNC10(FUNC5(25));
	}
	FUNC2(&itv->vsync_waitq, &wait);
	FUNC6(&itv->serialize_lock);

	if (f == 4)
		FUNC1("Mode change failed to sync to decoder\n");

	FUNC4(itv, CX2341X_DEC_SET_STANDARD, 1, itv->is_out_50hz);
	itv->main_rect.left = 0;
	itv->main_rect.top = 0;
	itv->main_rect.width = 720;
	itv->main_rect.height = itv->is_out_50hz ? 576 : 480;
	FUNC4(itv, CX2341X_OSD_SET_FRAMEBUFFER_WINDOW, 4,
		720, itv->main_rect.height, 0, 0);
	yi->main_rect = itv->main_rect;
	if (!itv->osd_info) {
		yi->osd_full_w = 720;
		yi->osd_full_h = itv->is_out_50hz ? 576 : 480;
	}
}