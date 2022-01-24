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
struct vb2_v4l2_buffer {int dummy; } ;
struct vb2_buffer {int /*<<< orphan*/  vb2_queue; } ;
struct aspeed_video_buffer {int /*<<< orphan*/  link; } ;
struct aspeed_video {int /*<<< orphan*/  flags; int /*<<< orphan*/  lock; int /*<<< orphan*/  buffers; } ;

/* Variables and functions */
 int /*<<< orphan*/  VIDEO_FRAME_INPRG ; 
 int /*<<< orphan*/  VIDEO_STREAMING ; 
 int /*<<< orphan*/  FUNC0 (struct aspeed_video*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct aspeed_video_buffer* FUNC6 (struct vb2_v4l2_buffer*) ; 
 struct vb2_v4l2_buffer* FUNC7 (struct vb2_buffer*) ; 
 struct aspeed_video* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct vb2_buffer *vb)
{
	bool empty;
	struct aspeed_video *video = FUNC8(vb->vb2_queue);
	struct vb2_v4l2_buffer *vbuf = FUNC7(vb);
	struct aspeed_video_buffer *avb = FUNC6(vbuf);
	unsigned long flags;

	FUNC3(&video->lock, flags);
	empty = FUNC2(&video->buffers);
	FUNC1(&avb->link, &video->buffers);
	FUNC4(&video->lock, flags);

	if (FUNC5(VIDEO_STREAMING, &video->flags) &&
	    !FUNC5(VIDEO_FRAME_INPRG, &video->flags) && empty)
		FUNC0(video);
}