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
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 struct hl_device* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct hl_device*,int,int) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ,long*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
				struct device_attribute *attr, const char *buf,
				size_t count)
{
	struct hl_device *hdev = FUNC0(dev);
	long value;
	int rc;

	rc = FUNC2(buf, 0, &value);

	if (rc) {
		count = -EINVAL;
		goto out;
	}

	FUNC1(hdev, false, false);

out:
	return count;
}