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
struct cosm_device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int FUNC0 (struct cosm_device*) ; 
 int FUNC1 (struct cosm_device*) ; 
 int FUNC2 (struct cosm_device*) ; 
 struct cosm_device* FUNC3 (struct device*) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 

__attribute__((used)) static ssize_t
FUNC5(struct device *dev, struct device_attribute *attr,
	    const char *buf, size_t count)
{
	struct cosm_device *cdev = FUNC3(dev);
	int rc;

	if (!cdev)
		return -EINVAL;

	if (FUNC4(buf, "boot")) {
		rc = FUNC2(cdev);
		goto done;
	}
	if (FUNC4(buf, "reset")) {
		rc = FUNC0(cdev);
		goto done;
	}

	if (FUNC4(buf, "shutdown")) {
		rc = FUNC1(cdev);
		goto done;
	}
	rc = -EINVAL;
done:
	if (rc)
		count = rc;
	return count;
}