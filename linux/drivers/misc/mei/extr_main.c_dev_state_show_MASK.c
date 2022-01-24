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
struct mei_device {int dev_state; int /*<<< orphan*/  device_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  enum mei_dev_state { ____Placeholder_mei_dev_state } mei_dev_state ;

/* Variables and functions */
 struct mei_device* FUNC0 (struct device*) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *device,
			      struct device_attribute *attr, char *buf)
{
	struct mei_device *dev = FUNC0(device);
	enum mei_dev_state dev_state;

	FUNC2(&dev->device_lock);
	dev_state = dev->dev_state;
	FUNC3(&dev->device_lock);

	return FUNC4(buf, "%s", FUNC1(dev_state));
}