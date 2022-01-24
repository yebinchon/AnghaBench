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
struct mcam_vb_buffer {int /*<<< orphan*/  queue; } ;
struct mcam_camera {scalar_t__ state; int /*<<< orphan*/  dev_lock; int /*<<< orphan*/  flags; int /*<<< orphan*/  buffers; } ;

/* Variables and functions */
 int /*<<< orphan*/  CF_SG_RESTART ; 
 scalar_t__ S_BUFWAIT ; 
 scalar_t__ S_STREAMING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mcam_camera*) ; 
 int /*<<< orphan*/  FUNC3 (struct mcam_camera*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct vb2_v4l2_buffer* FUNC7 (struct vb2_buffer*) ; 
 struct mcam_camera* FUNC8 (int /*<<< orphan*/ ) ; 
 struct mcam_vb_buffer* FUNC9 (struct vb2_v4l2_buffer*) ; 

__attribute__((used)) static void FUNC10(struct vb2_buffer *vb)
{
	struct vb2_v4l2_buffer *vbuf = FUNC7(vb);
	struct mcam_vb_buffer *mvb = FUNC9(vbuf);
	struct mcam_camera *cam = FUNC8(vb->vb2_queue);
	unsigned long flags;
	int start;

	FUNC4(&cam->dev_lock, flags);
	start = (cam->state == S_BUFWAIT) && !FUNC1(&cam->buffers);
	FUNC0(&mvb->queue, &cam->buffers);
	if (cam->state == S_STREAMING && FUNC6(CF_SG_RESTART, &cam->flags))
		FUNC3(cam);
	FUNC5(&cam->dev_lock, flags);
	if (start)
		FUNC2(cam);
}