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
struct video_device {int /*<<< orphan*/  lock; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int ERESTARTSYS ; 
 int FUNC0 (struct file*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct video_device* FUNC3 (struct file*) ; 

int FUNC4(struct file *filp)
{
	struct video_device *vdev = FUNC3(filp);
	int res;

	if (FUNC1(vdev->lock))
		return -ERESTARTSYS;
	res = FUNC0(filp);
	FUNC2(vdev->lock);
	return res;
}