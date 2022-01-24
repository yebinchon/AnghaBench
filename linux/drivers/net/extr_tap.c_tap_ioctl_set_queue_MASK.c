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
struct tap_queue {int dummy; } ;
struct tap_dev {int dummy; } ;
struct file {struct tap_queue* private_data; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int IFF_ATTACH_QUEUE ; 
 unsigned int IFF_DETACH_QUEUE ; 
 int FUNC0 (struct tap_queue*) ; 
 int FUNC1 (struct tap_dev*,struct file*,struct tap_queue*) ; 
 struct tap_dev* FUNC2 (struct tap_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct tap_dev*) ; 

__attribute__((used)) static int FUNC4(struct file *file, unsigned int flags)
{
	struct tap_queue *q = file->private_data;
	struct tap_dev *tap;
	int ret;

	tap = FUNC2(q);
	if (!tap)
		return -EINVAL;

	if (flags & IFF_ATTACH_QUEUE)
		ret = FUNC1(tap, file, q);
	else if (flags & IFF_DETACH_QUEUE)
		ret = FUNC0(q);
	else
		ret = -EINVAL;

	FUNC3(tap);
	return ret;
}