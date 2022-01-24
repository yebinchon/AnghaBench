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
struct TYPE_2__ {int /*<<< orphan*/  pp_mmio_stride; } ;
struct ocxl_afu {TYPE_1__ config; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct ocxl_afu* FUNC1 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC2(struct device *device,
				struct device_attribute *attr,
				char *buf)
{
	struct ocxl_afu *afu = FUNC1(device);

	return FUNC0(buf, PAGE_SIZE, "%d\n",
			afu->config.pp_mmio_stride);
}