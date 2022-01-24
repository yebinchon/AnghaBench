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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cosm_device {size_t state; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 size_t MIC_LAST ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/ * cosm_state_string ; 
 struct cosm_device* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t
FUNC2(struct device *dev, struct device_attribute *attr, char *buf)
{
	struct cosm_device *cdev = FUNC0(dev);

	if (!cdev || cdev->state >= MIC_LAST)
		return -EINVAL;

	return FUNC1(buf, PAGE_SIZE, "%s\n",
		cosm_state_string[cdev->state]);
}