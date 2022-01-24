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
struct cosm_device {int sysfs_heartbeat_enable; scalar_t__ state; int heartbeat_watchdog_enable; int /*<<< orphan*/  cosm_mutex; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ MIC_ONLINE ; 
 struct cosm_device* FUNC0 (struct device*) ; 
 int FUNC1 (char const*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t
FUNC4(struct device *dev,
		       struct device_attribute *attr,
		       const char *buf, size_t count)
{
	struct cosm_device *cdev = FUNC0(dev);
	int enable;
	int ret;

	if (!cdev)
		return -EINVAL;

	FUNC2(&cdev->cosm_mutex);
	ret = FUNC1(buf, 10, &enable);
	if (ret)
		goto unlock;

	cdev->sysfs_heartbeat_enable = enable;
	/* if state is not online, cdev->heartbeat_watchdog_enable is 0 */
	if (cdev->state == MIC_ONLINE)
		cdev->heartbeat_watchdog_enable = enable;
	ret = count;
unlock:
	FUNC3(&cdev->cosm_mutex);
	return ret;
}