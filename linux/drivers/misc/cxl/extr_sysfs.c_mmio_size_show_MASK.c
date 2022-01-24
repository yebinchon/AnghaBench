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
struct cxl_afu {TYPE_1__* adapter; scalar_t__ pp_size; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {scalar_t__ ps_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 struct cxl_afu* FUNC1 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC2(struct device *device,
			      struct device_attribute *attr,
			      char *buf)
{
	struct cxl_afu *afu = FUNC1(device);

	if (afu->pp_size)
		return FUNC0(buf, PAGE_SIZE, "%llu\n", afu->pp_size);
	return FUNC0(buf, PAGE_SIZE, "%llu\n", afu->adapter->ps_size);
}