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
struct framebuf {scalar_t__ status; scalar_t__ length; } ;
struct camera_data {int /*<<< orphan*/  vdev; int /*<<< orphan*/  v4l2_lock; int /*<<< orphan*/  streaming; int /*<<< orphan*/  wq_stream; struct framebuf* buffers; } ;

/* Variables and functions */
 int ENOTTY ; 
 int ERESTARTSYS ; 
 scalar_t__ FRAME_READY ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct camera_data *cam, int frame_nr)
{
	struct framebuf *frame = &cam->buffers[frame_nr];

	while (1) {
		if (frame->status == FRAME_READY)
			return 0;

		if (!cam->streaming) {
			frame->status = FRAME_READY;
			frame->length = 0;
			return 0;
		}

		FUNC1(&cam->v4l2_lock);
		FUNC4(cam->wq_stream,
					 !cam->streaming ||
					 frame->status == FRAME_READY);
		FUNC0(&cam->v4l2_lock);
		if (FUNC2(current))
			return -ERESTARTSYS;
		if (!FUNC3(&cam->vdev))
			return -ENOTTY;
	}
}