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
typedef  int u32 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ddb {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  GPIO_DIRECTION ; 
 int /*<<< orphan*/  GPIO_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (struct ddb*,int,int /*<<< orphan*/ ) ; 
 struct ddb* FUNC1 (struct device*) ; 
 int FUNC2 (char const*,char*,int*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *device, struct device_attribute *d,
			 const char *buf, size_t count)
{
	struct ddb *dev = FUNC1(device);
	u32 val;

	if (FUNC2(buf, "%u\n", &val) != 1)
		return -EINVAL;
	FUNC0(dev, 1, GPIO_DIRECTION);
	FUNC0(dev, val & 1, GPIO_OUTPUT);
	return count;
}