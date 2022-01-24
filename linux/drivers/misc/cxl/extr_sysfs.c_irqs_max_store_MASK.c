#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cxl_afu {int pp_irqs; int irqs_max; TYPE_2__* guest; TYPE_1__* adapter; } ;
typedef  int ssize_t ;
struct TYPE_4__ {int max_ints; } ;
struct TYPE_3__ {int user_irqs; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_FTR_HVMODE ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char const*,char*,int*) ; 
 struct cxl_afu* FUNC2 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *device,
				  struct device_attribute *attr,
				  const char *buf, size_t count)
{
	struct cxl_afu *afu = FUNC2(device);
	ssize_t ret;
	int irqs_max;

	ret = FUNC1(buf, "%i", &irqs_max);
	if (ret != 1)
		return -EINVAL;

	if (irqs_max < afu->pp_irqs)
		return -EINVAL;

	if (FUNC0(CPU_FTR_HVMODE)) {
		if (irqs_max > afu->adapter->user_irqs)
			return -EINVAL;
	} else {
		/* pHyp sets a per-AFU limit */
		if (irqs_max > afu->guest->max_ints)
			return -EINVAL;
	}

	afu->irqs_max = irqs_max;
	return count;
}