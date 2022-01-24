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
struct vb2_queue {int streaming; } ;
struct go7007 {scalar_t__ board_id; int /*<<< orphan*/  mpeg_video_aspect_ratio; int /*<<< orphan*/  mpeg_video_bitrate; int /*<<< orphan*/  mpeg_video_gop_closure; int /*<<< orphan*/  mpeg_video_gop_size; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  hw_lock; scalar_t__ modet_event_status; int /*<<< orphan*/ * active_buf; scalar_t__ next_seq; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ GO7007_BOARDID_ADS_USBAV_709 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct go7007*) ; 
 int /*<<< orphan*/  FUNC2 (struct go7007*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  s_stream ; 
 int /*<<< orphan*/  FUNC5 (struct go7007*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 struct go7007* FUNC7 (struct vb2_queue*) ; 
 int /*<<< orphan*/  video ; 

__attribute__((used)) static int FUNC8(struct vb2_queue *q, unsigned int count)
{
	struct go7007 *go = FUNC7(q);
	int ret;

	FUNC5(go);
	FUNC3(&go->hw_lock);
	go->next_seq = 0;
	go->active_buf = NULL;
	go->modet_event_status = 0;
	q->streaming = 1;
	if (FUNC1(go) < 0)
		ret = -EIO;
	else
		ret = 0;
	FUNC4(&go->hw_lock);
	if (ret) {
		q->streaming = 0;
		return ret;
	}
	FUNC0(&go->v4l2_dev, video, s_stream, 1);
	FUNC6(go->mpeg_video_gop_size, true);
	FUNC6(go->mpeg_video_gop_closure, true);
	FUNC6(go->mpeg_video_bitrate, true);
	FUNC6(go->mpeg_video_aspect_ratio, true);
	/* Turn on Capture LED */
	if (go->board_id == GO7007_BOARDID_ADS_USBAV_709)
		FUNC2(go, 0x3c82, 0x0005);
	return ret;
}