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
struct hl_device {scalar_t__ pm_mng_profile; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 scalar_t__ PM_AUTO ; 
 scalar_t__ PM_MANUAL ; 
 struct hl_device* FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (struct hl_device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
				struct device_attribute *attr, char *buf)
{
	struct hl_device *hdev = FUNC0(dev);

	if (FUNC1(hdev))
		return -ENODEV;

	return FUNC2(buf, "%s\n",
			(hdev->pm_mng_profile == PM_AUTO) ? "auto" :
			(hdev->pm_mng_profile == PM_MANUAL) ? "manual" :
			"unknown");
}