#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct msb_data {scalar_t__ disk_id; int page_size; unsigned long pages_in_block; unsigned long logical_block_count; int usage_count; TYPE_1__* disk; scalar_t__ read_only; int /*<<< orphan*/  prealloc_sg; int /*<<< orphan*/  io_work; int /*<<< orphan*/  io_queue; TYPE_5__* queue; int /*<<< orphan*/  tag_set; } ;
struct memstick_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_14__ {struct memstick_dev* queuedata; } ;
struct TYPE_13__ {int /*<<< orphan*/  flags; TYPE_5__* queue; struct msb_data* private_data; int /*<<< orphan*/ * fops; int /*<<< orphan*/  disk_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_MQ_F_SHOULD_MERGE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GENHD_FL_EXT_DEVT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_5__*) ; 
 int MS_BLOCK_MAX_PAGES ; 
 scalar_t__ MS_BLOCK_MAX_SEGS ; 
 int FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  WQ_MEM_RECLAIM ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,struct memstick_dev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 struct msb_data* FUNC14 (struct memstick_dev*) ; 
 int /*<<< orphan*/  msb_bdops ; 
 int /*<<< orphan*/  msb_disk_idr ; 
 int /*<<< orphan*/  msb_disk_lock ; 
 int /*<<< orphan*/  msb_io_work ; 
 int /*<<< orphan*/  msb_mq_ops ; 
 int /*<<< orphan*/  FUNC15 (struct memstick_dev*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*,unsigned long) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC23(struct memstick_dev *card)
{
	struct msb_data *msb = FUNC14(card);
	int rc;
	unsigned long capacity;

	FUNC16(&msb_disk_lock);
	msb->disk_id = FUNC12(&msb_disk_idr, card, 0, 256, GFP_KERNEL);
	FUNC17(&msb_disk_lock);

	if (msb->disk_id  < 0)
		return msb->disk_id;

	msb->disk = FUNC3(0);
	if (!msb->disk) {
		rc = -ENOMEM;
		goto out_release_id;
	}

	msb->queue = FUNC5(&msb->tag_set, &msb_mq_ops, 2,
						BLK_MQ_F_SHOULD_MERGE);
	if (FUNC1(msb->queue)) {
		rc = FUNC2(msb->queue);
		msb->queue = NULL;
		goto out_put_disk;
	}

	msb->queue->queuedata = card;

	FUNC7(msb->queue, MS_BLOCK_MAX_PAGES);
	FUNC9(msb->queue, MS_BLOCK_MAX_SEGS);
	FUNC8(msb->queue,
				   MS_BLOCK_MAX_PAGES * msb->page_size);
	FUNC6(msb->queue, msb->page_size);

	FUNC22(msb->disk->disk_name, "msblk%d", msb->disk_id);
	msb->disk->fops = &msb_bdops;
	msb->disk->private_data = msb;
	msb->disk->queue = msb->queue;
	msb->disk->flags |= GENHD_FL_EXT_DEVT;

	capacity = msb->pages_in_block * msb->logical_block_count;
	capacity *= (msb->page_size / 512);
	FUNC19(msb->disk, capacity);
	FUNC10("Set total disk size to %lu sectors", capacity);

	msb->usage_count = 1;
	msb->io_queue = FUNC4("ms_block", WQ_MEM_RECLAIM);
	FUNC0(&msb->io_work, msb_io_work);
	FUNC21(msb->prealloc_sg, MS_BLOCK_MAX_SEGS+1);

	if (msb->read_only)
		FUNC20(msb->disk, 1);

	FUNC15(card);
	FUNC11(&card->dev, msb->disk, NULL);
	FUNC10("Disk added");
	return 0;

out_put_disk:
	FUNC18(msb->disk);
out_release_id:
	FUNC16(&msb_disk_lock);
	FUNC13(&msb_disk_idr, msb->disk_id);
	FUNC17(&msb_disk_lock);
	return rc;
}