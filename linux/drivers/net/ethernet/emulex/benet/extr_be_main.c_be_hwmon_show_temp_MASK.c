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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int be_on_die_temp; } ;
struct be_adapter {TYPE_1__ hwmon_info; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int BE_INVALID_DIE_TEMP ; 
 int /*<<< orphan*/  EIO ; 
 struct be_adapter* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC2(struct device *dev,
				  struct device_attribute *dev_attr,
				  char *buf)
{
	struct be_adapter *adapter = FUNC0(dev);

	/* Unit: millidegree Celsius */
	if (adapter->hwmon_info.be_on_die_temp == BE_INVALID_DIE_TEMP)
		return -EIO;
	else
		return FUNC1(buf, "%u\n",
			       adapter->hwmon_info.be_on_die_temp * 1000);
}