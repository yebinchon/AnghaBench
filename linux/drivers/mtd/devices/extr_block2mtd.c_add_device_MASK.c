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
struct block_device {TYPE_1__* bd_inode; int /*<<< orphan*/  bd_dev; } ;
struct TYPE_4__ {char* name; int size; int erasesize; int writesize; int /*<<< orphan*/  index; int /*<<< orphan*/  owner; struct block2mtd_dev* priv; int /*<<< orphan*/  _read; int /*<<< orphan*/  _sync; int /*<<< orphan*/  _write; int /*<<< orphan*/  _erase; int /*<<< orphan*/  flags; int /*<<< orphan*/  type; int /*<<< orphan*/  writebufsize; } ;
struct block2mtd_dev {int /*<<< orphan*/  write_mutex; TYPE_2__ mtd; int /*<<< orphan*/  list; struct block_device* blkdev; } ;
typedef  int fmode_t ;
typedef  int /*<<< orphan*/  dev_t ;
struct TYPE_3__ {int i_size; } ;

/* Variables and functions */
 int FMODE_EXCL ; 
 int FMODE_READ ; 
 int FMODE_WRITE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct block_device*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ MTD_BLOCK_MAJOR ; 
 int /*<<< orphan*/  MTD_CAP_RAM ; 
 int /*<<< orphan*/  MTD_RAM ; 
 int PAGE_MASK ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 struct block_device* FUNC2 (int /*<<< orphan*/ ,int const,struct block2mtd_dev*) ; 
 struct block_device* FUNC3 (char*,int const,struct block2mtd_dev*) ; 
 int /*<<< orphan*/  blkmtd_device_list ; 
 int /*<<< orphan*/  block2mtd_erase ; 
 int /*<<< orphan*/  FUNC4 (struct block2mtd_dev*) ; 
 int /*<<< orphan*/  block2mtd_read ; 
 int /*<<< orphan*/  block2mtd_sync ; 
 int /*<<< orphan*/  block2mtd_write ; 
 char* FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 
 struct block2mtd_dev* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ FUNC9 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 () ; 

__attribute__((used)) static struct block2mtd_dev *FUNC17(char *devname, int erase_size,
		int timeout)
{
#ifndef MODULE
	int i;
#endif
	const fmode_t mode = FMODE_READ | FMODE_WRITE | FMODE_EXCL;
	struct block_device *bdev;
	struct block2mtd_dev *dev;
	char *name;

	if (!devname)
		return NULL;

	dev = FUNC6(sizeof(struct block2mtd_dev), GFP_KERNEL);
	if (!dev)
		return NULL;

	/* Get a handle on the device */
	bdev = FUNC3(devname, mode, dev);

#ifndef MODULE
	/*
	 * We might not have the root device mounted at this point.
	 * Try to resolve the device name by other means.
	 */
	for (i = 0; FUNC0(bdev) && i <= timeout; i++) {
		dev_t devt;

		if (i)
			/*
			 * Calling wait_for_device_probe in the first loop
			 * was not enough, sleep for a bit in subsequent
			 * go-arounds.
			 */
			FUNC8(1000);
		FUNC16();

		devt = FUNC12(devname);
		if (!devt)
			continue;
		bdev = FUNC2(devt, mode, dev);
	}
#endif

	if (FUNC0(bdev)) {
		FUNC13("error: cannot open device %s\n", devname);
		goto err_free_block2mtd;
	}
	dev->blkdev = bdev;

	if (FUNC1(bdev->bd_dev) == MTD_BLOCK_MAJOR) {
		FUNC13("attempting to use an MTD device as a block device\n");
		goto err_free_block2mtd;
	}

	if ((long)dev->blkdev->bd_inode->i_size % erase_size) {
		FUNC13("erasesize must be a divisor of device size\n");
		goto err_free_block2mtd;
	}

	FUNC11(&dev->write_mutex);

	/* Setup the MTD structure */
	/* make the name contain the block device in */
	name = FUNC5(GFP_KERNEL, "block2mtd: %s", devname);
	if (!name)
		goto err_destroy_mutex;

	dev->mtd.name = name;

	dev->mtd.size = dev->blkdev->bd_inode->i_size & PAGE_MASK;
	dev->mtd.erasesize = erase_size;
	dev->mtd.writesize = 1;
	dev->mtd.writebufsize = PAGE_SIZE;
	dev->mtd.type = MTD_RAM;
	dev->mtd.flags = MTD_CAP_RAM;
	dev->mtd._erase = block2mtd_erase;
	dev->mtd._write = block2mtd_write;
	dev->mtd._sync = block2mtd_sync;
	dev->mtd._read = block2mtd_read;
	dev->mtd.priv = dev;
	dev->mtd.owner = THIS_MODULE;

	if (FUNC9(&dev->mtd, NULL, 0)) {
		/* Device didn't get added, so free the entry */
		goto err_destroy_mutex;
	}

	FUNC7(&dev->list, &blkmtd_device_list);
	FUNC14("mtd%d: [%s] erase_size = %dKiB [%d]\n",
		dev->mtd.index,
		dev->mtd.name + FUNC15("block2mtd: "),
		dev->mtd.erasesize >> 10, dev->mtd.erasesize);
	return dev;

err_destroy_mutex:
	FUNC10(&dev->write_mutex);
err_free_block2mtd:
	FUNC4(dev);
	return NULL;
}