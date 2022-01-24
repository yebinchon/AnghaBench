#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct v4l2_tuner {scalar_t__ index; int audmode; } ;
struct TYPE_2__ {int mode; } ;
struct saa7134_dev {TYPE_1__ thread; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int UNSET ; 
 int FUNC0 (struct saa7134_dev*) ; 
 int FUNC1 (int) ; 
 struct saa7134_dev* FUNC2 (struct file*) ; 

int FUNC3(struct file *file, void *priv,
					const struct v4l2_tuner *t)
{
	struct saa7134_dev *dev = FUNC2(file);
	int rx, mode;

	if (0 != t->index)
		return -EINVAL;

	mode = dev->thread.mode;
	if (UNSET == mode) {
		rx   = FUNC0(dev);
		mode = FUNC1(rx);
	}
	if (mode != t->audmode)
		dev->thread.mode = t->audmode;

	return 0;
}