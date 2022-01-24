#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int rel_param; scalar_t__ rel_sectors; } ;
struct TYPE_13__ {int cmds; } ;
struct TYPE_12__ {scalar_t__ mmca_vsn; } ;
struct mmc_card {TYPE_3__ ext_csd; TYPE_2__ scr; TYPE_1__ csd; TYPE_8__* host; } ;
struct TYPE_16__ {int /*<<< orphan*/  queue; struct mmc_blk_data* blkdata; } ;
struct mmc_blk_data {int area_type; int usage; int flags; TYPE_4__* disk; TYPE_7__ queue; scalar_t__ read_only; struct device* parent; int /*<<< orphan*/  rpmbs; int /*<<< orphan*/  part; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  sector_t ;
struct TYPE_17__ {int index; } ;
struct TYPE_15__ {int first_minor; int flags; int /*<<< orphan*/  disk_name; int /*<<< orphan*/  queue; struct mmc_blk_data* private_data; int /*<<< orphan*/ * fops; int /*<<< orphan*/  major; } ;

/* Variables and functions */
 scalar_t__ CSD_SPEC_VER_3 ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENOSPC ; 
 struct mmc_blk_data* FUNC0 (int) ; 
 int EXT_CSD_WR_REL_PARAM_EN ; 
 int GENHD_FL_EXT_DEVT ; 
 int GENHD_FL_NO_PART_SCAN ; 
 int GENHD_FL_SUPPRESS_PARTITION_INFO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int MMC_BLK_CMD23 ; 
 int MMC_BLK_DATA_AREA_BOOT ; 
 int MMC_BLK_DATA_AREA_RPMB ; 
 int MMC_BLK_REL_WR ; 
 int /*<<< orphan*/  MMC_BLOCK_MAJOR ; 
 int SD_SCR_CMD23_SUPPORT ; 
 TYPE_4__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (struct mmc_blk_data*) ; 
 struct mmc_blk_data* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  max_devices ; 
 int /*<<< orphan*/  mmc_bdops ; 
 int /*<<< orphan*/  mmc_blk_ida ; 
 scalar_t__ FUNC10 (struct mmc_card*) ; 
 scalar_t__ FUNC11 (struct mmc_card*) ; 
 scalar_t__ FUNC12 (struct mmc_card*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_8__*) ; 
 scalar_t__ FUNC15 (TYPE_8__*) ; 
 int FUNC16 (TYPE_7__*,struct mmc_card*) ; 
 int perdev_minors ; 
 int /*<<< orphan*/  FUNC17 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int,char*,int,char const*) ; 

__attribute__((used)) static struct mmc_blk_data *FUNC21(struct mmc_card *card,
					      struct device *parent,
					      sector_t size,
					      bool default_ro,
					      const char *subname,
					      int area_type)
{
	struct mmc_blk_data *md;
	int devidx, ret;

	devidx = FUNC6(&mmc_blk_ida, 0, max_devices, GFP_KERNEL);
	if (devidx < 0) {
		/*
		 * We get -ENOSPC because there are no more any available
		 * devidx. The reason may be that, either userspace haven't yet
		 * unmounted the partitions, which postpones mmc_blk_release()
		 * from being called, or the device has more partitions than
		 * what we support.
		 */
		if (devidx == -ENOSPC)
			FUNC5(FUNC14(card->host),
				"no more device IDs available\n");

		return FUNC0(devidx);
	}

	md = FUNC9(sizeof(struct mmc_blk_data), GFP_KERNEL);
	if (!md) {
		ret = -ENOMEM;
		goto out;
	}

	md->area_type = area_type;

	/*
	 * Set the read-only status based on the supported commands
	 * and the write protect switch.
	 */
	md->read_only = FUNC10(card);

	md->disk = FUNC2(perdev_minors);
	if (md->disk == NULL) {
		ret = -ENOMEM;
		goto err_kfree;
	}

	FUNC1(&md->part);
	FUNC1(&md->rpmbs);
	md->usage = 1;

	ret = FUNC16(&md->queue, card);
	if (ret)
		goto err_putdisk;

	md->queue.blkdata = md;

	/*
	 * Keep an extra reference to the queue so that we can shutdown the
	 * queue (i.e. call blk_cleanup_queue()) while there are still
	 * references to the 'md'. The corresponding blk_put_queue() is in
	 * mmc_blk_put().
	 */
	if (!FUNC3(md->queue.queue)) {
		FUNC13(&md->queue);
		ret = -ENODEV;
		goto err_putdisk;
	}

	md->disk->major	= MMC_BLOCK_MAJOR;
	md->disk->first_minor = devidx * perdev_minors;
	md->disk->fops = &mmc_bdops;
	md->disk->private_data = md;
	md->disk->queue = md->queue.queue;
	md->parent = parent;
	FUNC19(md->disk, md->read_only || default_ro);
	md->disk->flags = GENHD_FL_EXT_DEVT;
	if (area_type & (MMC_BLK_DATA_AREA_RPMB | MMC_BLK_DATA_AREA_BOOT))
		md->disk->flags |= GENHD_FL_NO_PART_SCAN
				   | GENHD_FL_SUPPRESS_PARTITION_INFO;

	/*
	 * As discussed on lkml, GENHD_FL_REMOVABLE should:
	 *
	 * - be set for removable media with permanent block devices
	 * - be unset for removable block devices with permanent media
	 *
	 * Since MMC block devices clearly fall under the second
	 * case, we do not set GENHD_FL_REMOVABLE.  Userspace
	 * should use the block device creation/destruction hotplug
	 * messages to tell when the card is present.
	 */

	FUNC20(md->disk->disk_name, sizeof(md->disk->disk_name),
		 "mmcblk%u%s", card->host->index, subname ? subname : "");

	FUNC18(md->disk, size);

	if (FUNC15(card->host)) {
		if ((FUNC11(card) &&
		     card->csd.mmca_vsn >= CSD_SPEC_VER_3) ||
		    (FUNC12(card) &&
		     card->scr.cmds & SD_SCR_CMD23_SUPPORT))
			md->flags |= MMC_BLK_CMD23;
	}

	if (FUNC11(card) &&
	    md->flags & MMC_BLK_CMD23 &&
	    ((card->ext_csd.rel_param & EXT_CSD_WR_REL_PARAM_EN) ||
	     card->ext_csd.rel_sectors)) {
		md->flags |= MMC_BLK_REL_WR;
		FUNC4(md->queue.queue, true, true);
	}

	return md;

 err_putdisk:
	FUNC17(md->disk);
 err_kfree:
	FUNC8(md);
 out:
	FUNC7(&mmc_blk_ida, devidx);
	return FUNC0(ret);
}