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
struct vm_area_struct {int dummy; } ;
struct file {int /*<<< orphan*/  private_data; } ;
struct camera_data {int /*<<< orphan*/  v4l2_lock; int /*<<< orphan*/  stream_fh; } ;

/* Variables and functions */
 int ERESTARTSYS ; 
 int FUNC0 (struct camera_data*,struct vm_area_struct*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct camera_data* FUNC3 (struct file*) ; 

__attribute__((used)) static int FUNC4(struct file *file, struct vm_area_struct *area)
{
	struct camera_data *cam = FUNC3(file);
	int retval;

	if (FUNC1(&cam->v4l2_lock))
		return -ERESTARTSYS;
	retval = FUNC0(cam, area);

	if(!retval)
		cam->stream_fh = file->private_data;
	FUNC2(&cam->v4l2_lock);
	return retval;
}