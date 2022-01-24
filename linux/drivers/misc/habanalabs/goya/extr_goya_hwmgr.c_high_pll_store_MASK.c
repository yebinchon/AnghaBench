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
struct hl_device {long high_pll; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 size_t ENODEV ; 
 struct hl_device* FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (struct hl_device*) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ,long*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev, struct device_attribute *attr,
				const char *buf, size_t count)
{
	struct hl_device *hdev = FUNC0(dev);
	long value;
	int rc;

	if (FUNC1(hdev)) {
		count = -ENODEV;
		goto out;
	}

	rc = FUNC2(buf, 0, &value);

	if (rc) {
		count = -EINVAL;
		goto out;
	}

	hdev->high_pll = value;

out:
	return count;
}