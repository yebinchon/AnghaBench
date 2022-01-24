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
struct enclosure_component {int power_status; } ;
struct device_attribute {int dummy; } ;
struct device {int /*<<< orphan*/  parent; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* get_power_status ) (struct enclosure_device*,struct enclosure_component*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOTTY ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct enclosure_device*,struct enclosure_component*) ; 
 struct enclosure_component* FUNC2 (struct device*) ; 
 struct enclosure_device* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *cdev,
					  struct device_attribute *attr,
					  char *buf)
{
	struct enclosure_device *edev = FUNC3(cdev->parent);
	struct enclosure_component *ecomp = FUNC2(cdev);

	if (edev->cb->get_power_status)
		edev->cb->get_power_status(edev, ecomp);

	/* If still uninitialized, the callback failed or does not exist. */
	if (ecomp->power_status == -1)
		return (edev->cb->get_power_status) ? -EIO : -ENOTTY;

	return FUNC0(buf, 40, "%s\n", ecomp->power_status ? "on" : "off");
}