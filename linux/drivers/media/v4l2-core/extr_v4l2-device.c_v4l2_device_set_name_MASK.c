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
struct v4l2_device {int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  atomic_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*,char const*,int) ; 
 int FUNC2 (char const*) ; 

int FUNC3(struct v4l2_device *v4l2_dev, const char *basename,
						atomic_t *instance)
{
	int num = FUNC0(instance) - 1;
	int len = FUNC2(basename);

	if (basename[len - 1] >= '0' && basename[len - 1] <= '9')
		FUNC1(v4l2_dev->name, sizeof(v4l2_dev->name),
				"%s-%d", basename, num);
	else
		FUNC1(v4l2_dev->name, sizeof(v4l2_dev->name),
				"%s%d", basename, num);
	return num;
}