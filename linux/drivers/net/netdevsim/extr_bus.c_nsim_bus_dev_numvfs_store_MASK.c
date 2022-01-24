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
struct nsim_bus_dev {unsigned int num_vfs; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EBUSY ; 
 int FUNC0 (char const*,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (struct nsim_bus_dev*) ; 
 int FUNC2 (struct nsim_bus_dev*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct nsim_bus_dev* FUNC5 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC6(struct device *dev, struct device_attribute *attr,
			  const char *buf, size_t count)
{
	struct nsim_bus_dev *nsim_bus_dev = FUNC5(dev);
	unsigned int num_vfs;
	int ret;

	ret = FUNC0(buf, 0, &num_vfs);
	if (ret)
		return ret;

	FUNC3();
	if (nsim_bus_dev->num_vfs == num_vfs)
		goto exit_good;
	if (nsim_bus_dev->num_vfs && num_vfs) {
		ret = -EBUSY;
		goto exit_unlock;
	}

	if (num_vfs) {
		ret = FUNC2(nsim_bus_dev, num_vfs);
		if (ret)
			goto exit_unlock;
	} else {
		FUNC1(nsim_bus_dev);
	}
exit_good:
	ret = count;
exit_unlock:
	FUNC4();

	return ret;
}