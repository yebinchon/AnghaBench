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
struct cxl_afu {scalar_t__ current_mode; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 scalar_t__ CXL_MODE_DEDICATED ; 
 scalar_t__ CXL_MODE_DIRECTED ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*) ; 
 struct cxl_afu* FUNC1 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC2(struct device *device,
			 struct device_attribute *attr,
			 char *buf)
{
	struct cxl_afu *afu = FUNC1(device);

	if (afu->current_mode == CXL_MODE_DEDICATED)
		return FUNC0(buf, PAGE_SIZE, "dedicated_process\n");
	if (afu->current_mode == CXL_MODE_DIRECTED)
		return FUNC0(buf, PAGE_SIZE, "afu_directed\n");
	return FUNC0(buf, PAGE_SIZE, "none\n");
}