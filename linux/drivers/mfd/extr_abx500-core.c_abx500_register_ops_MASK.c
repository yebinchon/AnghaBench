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
struct device {int dummy; } ;
struct abx500_ops {int dummy; } ;
struct abx500_device_entry {int /*<<< orphan*/  list; int /*<<< orphan*/  ops; struct device* dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  abx500_list ; 
 struct abx500_device_entry* FUNC0 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct abx500_ops*,int) ; 

int FUNC3(struct device *dev, struct abx500_ops *ops)
{
	struct abx500_device_entry *dev_entry;

	dev_entry = FUNC0(dev, sizeof(*dev_entry), GFP_KERNEL);
	if (!dev_entry)
		return -ENOMEM;

	dev_entry->dev = dev;
	FUNC2(&dev_entry->ops, ops, sizeof(*ops));

	FUNC1(&dev_entry->list, &abx500_list);
	return 0;
}