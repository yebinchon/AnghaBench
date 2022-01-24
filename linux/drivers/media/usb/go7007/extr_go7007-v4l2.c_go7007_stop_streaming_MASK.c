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
struct vb2_queue {scalar_t__ streaming; } ;
struct go7007 {scalar_t__ board_id; int /*<<< orphan*/  mpeg_video_aspect_ratio; int /*<<< orphan*/  mpeg_video_bitrate; int /*<<< orphan*/  mpeg_video_gop_closure; int /*<<< orphan*/  mpeg_video_gop_size; int /*<<< orphan*/  spinlock; int /*<<< orphan*/  vidq_active; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  hw_lock; } ;

/* Variables and functions */
 scalar_t__ GO7007_BOARDID_ADS_USBAV_709 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct go7007*) ; 
 int /*<<< orphan*/  FUNC3 (struct go7007*) ; 
 int /*<<< orphan*/  FUNC4 (struct go7007*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  s_stream ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 struct go7007* FUNC10 (struct vb2_queue*) ; 
 int /*<<< orphan*/  video ; 

__attribute__((used)) static void FUNC11(struct vb2_queue *q)
{
	struct go7007 *go = FUNC10(q);
	unsigned long flags;

	q->streaming = 0;
	FUNC3(go);
	FUNC5(&go->hw_lock);
	FUNC2(go);
	FUNC6(&go->hw_lock);
	FUNC1(&go->v4l2_dev, video, s_stream, 0);

	FUNC7(&go->spinlock, flags);
	FUNC0(&go->vidq_active);
	FUNC8(&go->spinlock, flags);
	FUNC9(go->mpeg_video_gop_size, false);
	FUNC9(go->mpeg_video_gop_closure, false);
	FUNC9(go->mpeg_video_bitrate, false);
	FUNC9(go->mpeg_video_aspect_ratio, false);
	/* Turn on Capture LED */
	if (go->board_id == GO7007_BOARDID_ADS_USBAV_709)
		FUNC4(go, 0x3c82, 0x000d);
}