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
struct lis3lv02d {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 struct lis3lv02d* FUNC0 (struct device*) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ,unsigned long*) ; 
 scalar_t__ FUNC2 (struct lis3lv02d*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct lis3lv02d*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				struct device_attribute *attr, const char *buf,
				size_t count)
{
	struct lis3lv02d *lis3 = FUNC0(dev);
	unsigned long rate;
	int ret;

	ret = FUNC1(buf, 0, &rate);
	if (ret)
		return ret;

	FUNC3(lis3);
	if (FUNC2(lis3, rate))
		return -EINVAL;

	return count;
}