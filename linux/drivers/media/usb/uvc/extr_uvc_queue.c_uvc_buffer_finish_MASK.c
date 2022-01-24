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
struct vb2_buffer {scalar_t__ state; int /*<<< orphan*/  vb2_queue; } ;
struct uvc_video_queue {int dummy; } ;
struct uvc_streaming {int dummy; } ;
struct uvc_buffer {int dummy; } ;

/* Variables and functions */
 scalar_t__ VB2_BUF_STATE_DONE ; 
 struct vb2_v4l2_buffer* FUNC0 (struct vb2_buffer*) ; 
 struct uvc_streaming* FUNC1 (struct uvc_video_queue*) ; 
 struct uvc_buffer* FUNC2 (struct vb2_v4l2_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct uvc_streaming*,struct vb2_v4l2_buffer*,struct uvc_buffer*) ; 
 struct uvc_video_queue* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct vb2_buffer *vb)
{
	struct vb2_v4l2_buffer *vbuf = FUNC0(vb);
	struct uvc_video_queue *queue = FUNC4(vb->vb2_queue);
	struct uvc_streaming *stream = FUNC1(queue);
	struct uvc_buffer *buf = FUNC2(vbuf);

	if (vb->state == VB2_BUF_STATE_DONE)
		FUNC3(stream, vbuf, buf);
}