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
struct cosm_device {char* cmdline; int /*<<< orphan*/  cosm_mutex; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 size_t ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct cosm_device* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,size_t) ; 

__attribute__((used)) static ssize_t
FUNC6(struct device *dev, struct device_attribute *attr,
	      const char *buf, size_t count)
{
	struct cosm_device *cdev = FUNC0(dev);

	if (!cdev)
		return -EINVAL;

	FUNC3(&cdev->cosm_mutex);
	FUNC1(cdev->cmdline);

	cdev->cmdline = FUNC2(count + 1, GFP_KERNEL);
	if (!cdev->cmdline) {
		count = -ENOMEM;
		goto unlock;
	}

	FUNC5(cdev->cmdline, buf, count);

	if (cdev->cmdline[count - 1] == '\n')
		cdev->cmdline[count - 1] = '\0';
	else
		cdev->cmdline[count] = '\0';
unlock:
	FUNC4(&cdev->cosm_mutex);
	return count;
}