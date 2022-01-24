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
struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct c2port_device {int /*<<< orphan*/  name; int /*<<< orphan*/  dev; int /*<<< orphan*/  mutex; int /*<<< orphan*/  flash_access; int /*<<< orphan*/  access; } ;
struct bin_attribute {int dummy; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 scalar_t__ EBUSY ; 
 scalar_t__ FUNC0 (struct c2port_device*,char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct c2port_device* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kobject*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC6(struct file *filp, struct kobject *kobj,
				struct bin_attribute *attr,
				char *buffer, loff_t offset, size_t count)
{
	struct c2port_device *c2dev = FUNC2(FUNC3(kobj));
	ssize_t ret;

	/* Check the device and flash access status */
	if (!c2dev->access || !c2dev->flash_access)
		return -EBUSY;

	FUNC4(&c2dev->mutex);
	ret = FUNC0(c2dev, buffer, offset, count);
	FUNC5(&c2dev->mutex);

	if (ret < 0)
		FUNC1(c2dev->dev, "cannot read %s flash\n", c2dev->name);

	return ret;
}