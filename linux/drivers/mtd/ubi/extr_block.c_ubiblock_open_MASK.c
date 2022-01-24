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
struct ubiblock {scalar_t__ refcnt; int /*<<< orphan*/  dev_mutex; int /*<<< orphan*/ * desc; int /*<<< orphan*/  vol_id; int /*<<< orphan*/  ubi_num; int /*<<< orphan*/  gd; } ;
struct block_device {TYPE_1__* bd_disk; } ;
typedef  int fmode_t ;
struct TYPE_2__ {struct ubiblock* private_data; } ;

/* Variables and functions */
 int EROFS ; 
 int FMODE_WRITE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UBI_READONLY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct block_device *bdev, fmode_t mode)
{
	struct ubiblock *dev = bdev->bd_disk->private_data;
	int ret;

	FUNC4(&dev->dev_mutex);
	if (dev->refcnt > 0) {
		/*
		 * The volume is already open, just increase the reference
		 * counter.
		 */
		goto out_done;
	}

	/*
	 * We want users to be aware they should only mount us as read-only.
	 * It's just a paranoid check, as write requests will get rejected
	 * in any case.
	 */
	if (mode & FMODE_WRITE) {
		ret = -EROFS;
		goto out_unlock;
	}

	dev->desc = FUNC6(dev->ubi_num, dev->vol_id, UBI_READONLY);
	if (FUNC0(dev->desc)) {
		FUNC2(FUNC3(dev->gd), "failed to open ubi volume %d_%d",
			dev->ubi_num, dev->vol_id);
		ret = FUNC1(dev->desc);
		dev->desc = NULL;
		goto out_unlock;
	}

out_done:
	dev->refcnt++;
	FUNC5(&dev->dev_mutex);
	return 0;

out_unlock:
	FUNC5(&dev->dev_mutex);
	return ret;
}