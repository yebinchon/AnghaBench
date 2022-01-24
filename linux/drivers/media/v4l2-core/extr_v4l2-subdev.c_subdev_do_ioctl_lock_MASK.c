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
struct video_device {struct mutex* lock; } ;
struct mutex {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 long ENODEV ; 
 long ERESTARTSYS ; 
 scalar_t__ FUNC0 (struct mutex*) ; 
 int /*<<< orphan*/  FUNC1 (struct mutex*) ; 
 long FUNC2 (struct file*,unsigned int,void*) ; 
 struct video_device* FUNC3 (struct file*) ; 
 scalar_t__ FUNC4 (struct video_device*) ; 

__attribute__((used)) static long FUNC5(struct file *file, unsigned int cmd, void *arg)
{
	struct video_device *vdev = FUNC3(file);
	struct mutex *lock = vdev->lock;
	long ret = -ENODEV;

	if (lock && FUNC0(lock))
		return -ERESTARTSYS;
	if (FUNC4(vdev))
		ret = FUNC2(file, cmd, arg);
	if (lock)
		FUNC1(lock);
	return ret;
}