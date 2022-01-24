#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct ubiblock_pdu {int dummy; } ;
struct TYPE_10__ {int queue_depth; int cmd_size; int nr_hw_queues; struct ubiblock* driver_data; int /*<<< orphan*/  flags; int /*<<< orphan*/  numa_node; int /*<<< orphan*/ * ops; } ;
struct ubiblock {int ubi_num; int vol_id; struct gendisk* gd; TYPE_3__ tag_set; TYPE_1__* rq; int /*<<< orphan*/  list; int /*<<< orphan*/  wq; int /*<<< orphan*/  leb_size; int /*<<< orphan*/  dev_mutex; } ;
struct ubi_volume_info {int ubi_num; int vol_id; int /*<<< orphan*/  name; int /*<<< orphan*/  usable_leb_size; } ;
struct gendisk {scalar_t__ first_minor; int /*<<< orphan*/  disk_name; TYPE_1__* queue; struct ubiblock* private_data; int /*<<< orphan*/  major; int /*<<< orphan*/ * fops; } ;
struct TYPE_9__ {struct ubiblock* queuedata; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_MQ_F_SHOULD_MERGE ; 
 int EEXIST ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  NUMA_NO_NODE ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  UBI_MAX_SG_COUNT ; 
 int /*<<< orphan*/  FUNC2 (struct gendisk*) ; 
 struct gendisk* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 TYPE_1__* FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct ubi_volume_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  devices_mutex ; 
 int /*<<< orphan*/  FUNC13 (struct gendisk*) ; 
 scalar_t__ FUNC14 (int,int) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,struct ubiblock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (struct ubiblock*) ; 
 struct ubiblock* FUNC18 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (char*) ; 
 int /*<<< orphan*/  FUNC24 (struct gendisk*) ; 
 int /*<<< orphan*/  FUNC25 (struct gendisk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  ubiblock_devices ; 
 int /*<<< orphan*/  ubiblock_major ; 
 int /*<<< orphan*/  ubiblock_minor_idr ; 
 int /*<<< orphan*/  ubiblock_mq_ops ; 
 int /*<<< orphan*/  ubiblock_ops ; 

int FUNC27(struct ubi_volume_info *vi)
{
	struct ubiblock *dev;
	struct gendisk *gd;
	u64 disk_capacity;
	int ret;

	ret = FUNC10(vi, &disk_capacity);
	if (ret) {
		return ret;
	}

	/* Check that the volume isn't already handled */
	FUNC21(&devices_mutex);
	if (FUNC14(vi->ubi_num, vi->vol_id)) {
		ret = -EEXIST;
		goto out_unlock;
	}

	dev = FUNC18(sizeof(struct ubiblock), GFP_KERNEL);
	if (!dev) {
		ret = -ENOMEM;
		goto out_unlock;
	}

	FUNC20(&dev->dev_mutex);

	dev->ubi_num = vi->ubi_num;
	dev->vol_id = vi->vol_id;
	dev->leb_size = vi->usable_leb_size;

	/* Initialize the gendisk of this ubiblock device */
	gd = FUNC3(1);
	if (!gd) {
		FUNC23("UBI: block: alloc_disk failed\n");
		ret = -ENODEV;
		goto out_free_dev;
	}

	gd->fops = &ubiblock_ops;
	gd->major = ubiblock_major;
	gd->first_minor = FUNC15(&ubiblock_minor_idr, dev, 0, 0, GFP_KERNEL);
	if (gd->first_minor < 0) {
		FUNC11(FUNC13(gd),
			"block: dynamic minor allocation failed");
		ret = -ENODEV;
		goto out_put_disk;
	}
	gd->private_data = dev;
	FUNC26(gd->disk_name, "ubiblock%d_%d", dev->ubi_num, dev->vol_id);
	FUNC25(gd, disk_capacity);
	dev->gd = gd;

	dev->tag_set.ops = &ubiblock_mq_ops;
	dev->tag_set.queue_depth = 64;
	dev->tag_set.numa_node = NUMA_NO_NODE;
	dev->tag_set.flags = BLK_MQ_F_SHOULD_MERGE;
	dev->tag_set.cmd_size = sizeof(struct ubiblock_pdu);
	dev->tag_set.driver_data = dev;
	dev->tag_set.nr_hw_queues = 1;

	ret = FUNC6(&dev->tag_set);
	if (ret) {
		FUNC11(FUNC13(dev->gd), "blk_mq_alloc_tag_set failed");
		goto out_remove_minor;
	}

	dev->rq = FUNC8(&dev->tag_set);
	if (FUNC0(dev->rq)) {
		FUNC11(FUNC13(gd), "blk_mq_init_queue failed");
		ret = FUNC1(dev->rq);
		goto out_free_tags;
	}
	FUNC9(dev->rq, UBI_MAX_SG_COUNT);

	dev->rq->queuedata = dev;
	dev->gd->queue = dev->rq;

	/*
	 * Create one workqueue per volume (per registered block device).
	 * Rembember workqueues are cheap, they're not threads.
	 */
	dev->wq = FUNC4("%s", 0, 0, gd->disk_name);
	if (!dev->wq) {
		ret = -ENOMEM;
		goto out_free_queue;
	}

	FUNC19(&dev->list, &ubiblock_devices);

	/* Must be the last step: anyone can call file ops from now on */
	FUNC2(dev->gd);
	FUNC12(FUNC13(dev->gd), "created from ubi%d:%d(%s)",
		 dev->ubi_num, dev->vol_id, vi->name);
	FUNC22(&devices_mutex);
	return 0;

out_free_queue:
	FUNC5(dev->rq);
out_free_tags:
	FUNC7(&dev->tag_set);
out_remove_minor:
	FUNC16(&ubiblock_minor_idr, gd->first_minor);
out_put_disk:
	FUNC24(dev->gd);
out_free_dev:
	FUNC17(dev);
out_unlock:
	FUNC22(&devices_mutex);

	return ret;
}