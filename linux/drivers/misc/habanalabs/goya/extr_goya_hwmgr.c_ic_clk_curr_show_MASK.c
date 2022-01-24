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
struct hl_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  long ssize_t ;

/* Variables and functions */
 long ENODEV ; 
 int /*<<< orphan*/  IC_PLL ; 
 struct hl_device* FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (struct hl_device*) ; 
 long FUNC2 (struct hl_device*,int /*<<< orphan*/ ,int) ; 
 long FUNC3 (char*,char*,long) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				struct device_attribute *attr, char *buf)
{
	struct hl_device *hdev = FUNC0(dev);
	long value;

	if (FUNC1(hdev))
		return -ENODEV;

	value = FUNC2(hdev, IC_PLL, true);

	if (value < 0)
		return value;

	return FUNC3(buf, "%lu\n", value);
}