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
typedef  int /*<<< orphan*/  umode_t ;
struct kobject {int dummy; } ;
struct genwqe_dev {int dummy; } ;
struct device {int dummy; } ;
struct attribute {int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 struct genwqe_dev* FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (struct genwqe_dev*) ; 
 struct attribute** genwqe_normal_attributes ; 
 struct device* FUNC2 (struct kobject*) ; 

__attribute__((used)) static umode_t FUNC3(struct kobject *kobj,
				 struct attribute *attr, int n)
{
	unsigned int j;
	struct device *dev = FUNC2(kobj);
	struct genwqe_dev *cd = FUNC0(dev);
	umode_t mode = attr->mode;

	if (FUNC1(cd))
		return mode;

	for (j = 0; genwqe_normal_attributes[j] != NULL;  j++)
		if (genwqe_normal_attributes[j] == attr)
			return mode;

	return 0;
}