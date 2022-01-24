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
struct rc_scancode_filter {int mask; int data; } ;
struct rc_filter_attribute {scalar_t__ type; scalar_t__ mask; } ;
struct rc_dev {int /*<<< orphan*/  lock; struct rc_scancode_filter scancode_wakeup_filter; struct rc_scancode_filter scancode_filter; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 scalar_t__ RC_FILTER_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 struct rc_dev* FUNC3 (struct device*) ; 
 struct rc_filter_attribute* FUNC4 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *device,
			   struct device_attribute *attr,
			   char *buf)
{
	struct rc_dev *dev = FUNC3(device);
	struct rc_filter_attribute *fattr = FUNC4(attr);
	struct rc_scancode_filter *filter;
	u32 val;

	FUNC0(&dev->lock);

	if (fattr->type == RC_FILTER_NORMAL)
		filter = &dev->scancode_filter;
	else
		filter = &dev->scancode_wakeup_filter;

	if (fattr->mask)
		val = filter->mask;
	else
		val = filter->data;
	FUNC1(&dev->lock);

	return FUNC2(buf, "%#x\n", val);
}