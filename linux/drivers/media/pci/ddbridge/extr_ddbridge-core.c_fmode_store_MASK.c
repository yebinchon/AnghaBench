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
struct TYPE_2__ {int* name; } ;
struct device_attribute {TYPE_1__ attr; } ;
struct device {int dummy; } ;
struct ddb {int /*<<< orphan*/ * link; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct ddb*,int /*<<< orphan*/ *,unsigned int) ; 
 struct ddb* FUNC1 (struct device*) ; 
 int FUNC2 (char const*,char*,unsigned int*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *device, struct device_attribute *attr,
			   const char *buf, size_t count)
{
	struct ddb *dev = FUNC1(device);
	int num = attr->attr.name[5] - 0x30;
	unsigned int val;

	if (FUNC2(buf, "%u\n", &val) != 1)
		return -EINVAL;
	if (val > 3)
		return -EINVAL;
	FUNC0(dev, &dev->link[num], val);
	return count;
}