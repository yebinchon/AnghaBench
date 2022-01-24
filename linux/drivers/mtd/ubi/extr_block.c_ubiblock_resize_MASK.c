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
typedef  scalar_t__ u64 ;
struct ubiblock {int /*<<< orphan*/  dev_mutex; int /*<<< orphan*/  gd; } ;
struct ubi_volume_info {int /*<<< orphan*/  used_bytes; int /*<<< orphan*/  size; int /*<<< orphan*/  vol_id; int /*<<< orphan*/  ubi_num; } ;

/* Variables and functions */
 int EFBIG ; 
 int ENODEV ; 
 int FUNC0 (struct ubi_volume_info*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  devices_mutex ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct ubiblock* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct ubi_volume_info *vi)
{
	struct ubiblock *dev;
	u64 disk_capacity;
	int ret;

	/*
	 * Need to lock the device list until we stop using the device,
	 * otherwise the device struct might get released in
	 * 'ubiblock_remove()'.
	 */
	FUNC6(&devices_mutex);
	dev = FUNC4(vi->ubi_num, vi->vol_id);
	if (!dev) {
		FUNC7(&devices_mutex);
		return -ENODEV;
	}

	ret = FUNC0(vi, &disk_capacity);
	if (ret) {
		FUNC7(&devices_mutex);
		if (ret == -EFBIG) {
			FUNC2(FUNC3(dev->gd),
				 "the volume is too big (%d LEBs), cannot resize",
				 vi->size);
		}
		return ret;
	}

	FUNC6(&dev->dev_mutex);

	if (FUNC5(dev->gd) != disk_capacity) {
		FUNC8(dev->gd, disk_capacity);
		FUNC1(FUNC3(dev->gd), "resized to %lld bytes",
			 vi->used_bytes);
	}
	FUNC7(&dev->dev_mutex);
	FUNC7(&devices_mutex);
	return 0;
}