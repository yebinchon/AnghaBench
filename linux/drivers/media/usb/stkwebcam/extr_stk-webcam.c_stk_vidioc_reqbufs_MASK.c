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
struct v4l2_requestbuffers {scalar_t__ memory; int count; } ;
struct stk_camera {int n_sbufs; struct file* owner; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ V4L2_MEMORY_MMAP ; 
 scalar_t__ FUNC0 (struct stk_camera*) ; 
 int /*<<< orphan*/  FUNC1 (struct stk_camera*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct stk_camera*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct stk_camera*) ; 
 int /*<<< orphan*/  FUNC4 (struct stk_camera*) ; 
 struct stk_camera* FUNC5 (struct file*) ; 

__attribute__((used)) static int FUNC6(struct file *filp,
		void *priv, struct v4l2_requestbuffers *rb)
{
	struct stk_camera *dev = FUNC5(filp);

	if (dev == NULL)
		return -ENODEV;
	if (rb->memory != V4L2_MEMORY_MMAP)
		return -EINVAL;
	if (FUNC0(dev)
		|| (dev->owner && dev->owner != filp))
		return -EBUSY;
	FUNC3(dev);
	if (rb->count == 0) {
		FUNC2(dev, 0x0, 0x49); /* turn off the LED */
		FUNC4(dev);
		dev->owner = NULL;
		return 0;
	}
	dev->owner = filp;

	/*FIXME If they ask for zero, we must stop streaming and free */
	if (rb->count < 3)
		rb->count = 3;
	/* Arbitrary limit */
	else if (rb->count > 5)
		rb->count = 5;

	FUNC1(dev, rb->count);
	rb->count = dev->n_sbufs;
	return 0;
}