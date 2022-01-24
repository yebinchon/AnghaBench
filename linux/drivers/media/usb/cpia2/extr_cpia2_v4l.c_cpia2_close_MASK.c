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
struct video_device {int dummy; } ;
struct file {int /*<<< orphan*/ * private_data; } ;
struct camera_data {int /*<<< orphan*/  v4l2_lock; scalar_t__ mmapped; int /*<<< orphan*/ * stream_fh; int /*<<< orphan*/  vdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct camera_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct camera_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct camera_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct camera_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct file*) ; 
 int FUNC7 (struct file*) ; 
 struct video_device* FUNC8 (struct file*) ; 
 struct camera_data* FUNC9 (struct video_device*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct file *file)
{
	struct video_device *dev = FUNC8(file);
	struct camera_data *cam = FUNC9(dev);

	FUNC4(&cam->v4l2_lock);
	if (FUNC10(&cam->vdev) && FUNC6(file)) {
		FUNC3(cam);

		/* save camera state for later open */
		FUNC1(cam);

		FUNC2(cam);
		FUNC0(cam);
	}

	if (cam->stream_fh == file->private_data) {
		cam->stream_fh = NULL;
		cam->mmapped = 0;
	}
	FUNC5(&cam->v4l2_lock);
	return FUNC7(file);
}