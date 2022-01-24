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
struct ubiblock {scalar_t__ refcnt; int /*<<< orphan*/  dev_mutex; int /*<<< orphan*/  list; } ;
struct ubi_volume_info {int /*<<< orphan*/  vol_id; int /*<<< orphan*/  ubi_num; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int /*<<< orphan*/  devices_mutex ; 
 struct ubiblock* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ubiblock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ubiblock*) ; 

int FUNC6(struct ubi_volume_info *vi)
{
	struct ubiblock *dev;
	int ret;

	FUNC3(&devices_mutex);
	dev = FUNC0(vi->ubi_num, vi->vol_id);
	if (!dev) {
		ret = -ENODEV;
		goto out_unlock;
	}

	/* Found a device, let's lock it so we can check if it's busy */
	FUNC3(&dev->dev_mutex);
	if (dev->refcnt > 0) {
		ret = -EBUSY;
		goto out_unlock_dev;
	}

	/* Remove from device list */
	FUNC2(&dev->list);
	FUNC5(dev);
	FUNC4(&dev->dev_mutex);
	FUNC4(&devices_mutex);

	FUNC1(dev);
	return 0;

out_unlock_dev:
	FUNC4(&dev->dev_mutex);
out_unlock:
	FUNC4(&devices_mutex);
	return ret;
}