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
struct enclosure_device {TYPE_1__* cb; } ;
struct enclosure_component {int fault; } ;
struct device_attribute {int dummy; } ;
struct device {int /*<<< orphan*/  parent; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* get_fault ) (struct enclosure_device*,struct enclosure_component*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct enclosure_device*,struct enclosure_component*) ; 
 struct enclosure_component* FUNC2 (struct device*) ; 
 struct enclosure_device* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *cdev,
				   struct device_attribute *attr, char *buf)
{
	struct enclosure_device *edev = FUNC3(cdev->parent);
	struct enclosure_component *ecomp = FUNC2(cdev);

	if (edev->cb->get_fault)
		edev->cb->get_fault(edev, ecomp);
	return FUNC0(buf, 40, "%d\n", ecomp->fault);
}