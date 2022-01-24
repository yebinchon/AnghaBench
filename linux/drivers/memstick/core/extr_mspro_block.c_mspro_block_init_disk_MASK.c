#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct mspro_sys_info {int /*<<< orphan*/  block_size; int /*<<< orphan*/  user_block_count; int /*<<< orphan*/  unit_size; int /*<<< orphan*/  sectors_per_track; int /*<<< orphan*/  heads; int /*<<< orphan*/  cylinders; } ;
struct mspro_sys_attr {scalar_t__ id; struct mspro_sys_info* data; } ;
struct mspro_devinfo {int /*<<< orphan*/  block_size; int /*<<< orphan*/  user_block_count; int /*<<< orphan*/  unit_size; int /*<<< orphan*/  sectors_per_track; int /*<<< orphan*/  heads; int /*<<< orphan*/  cylinders; } ;
struct TYPE_13__ {scalar_t__* attrs; } ;
struct mspro_block_data {unsigned long cylinders; unsigned long heads; unsigned long sectors_per_track; unsigned long page_size; int usage_count; int active; TYPE_2__* disk; TYPE_5__* queue; int /*<<< orphan*/  tag_set; TYPE_1__ attr_group; } ;
struct memstick_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_15__ {struct memstick_dev* queuedata; } ;
struct TYPE_14__ {int first_minor; int /*<<< orphan*/  disk_name; TYPE_5__* queue; struct mspro_block_data* private_data; int /*<<< orphan*/ * fops; int /*<<< orphan*/  major; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_MQ_F_SHOULD_MERGE ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (TYPE_5__*) ; 
 scalar_t__ MSPRO_BLOCK_ID_DEVINFO ; 
 scalar_t__ MSPRO_BLOCK_ID_SYSINFO ; 
 int MSPRO_BLOCK_MAX_PAGES ; 
 int /*<<< orphan*/  MSPRO_BLOCK_MAX_SEGS ; 
 int MSPRO_BLOCK_PART_SHIFT ; 
 int FUNC1 (TYPE_5__*) ; 
 TYPE_2__* FUNC2 (int) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,struct memstick_dev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  major ; 
 struct mspro_block_data* FUNC13 (struct memstick_dev*) ; 
 int /*<<< orphan*/  ms_block_bdops ; 
 int /*<<< orphan*/  mspro_block_disk_idr ; 
 int /*<<< orphan*/  mspro_block_disk_lock ; 
 struct mspro_sys_attr* FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  mspro_mq_ops ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*,unsigned long) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC20(struct memstick_dev *card)
{
	struct mspro_block_data *msb = FUNC13(card);
	struct mspro_devinfo *dev_info = NULL;
	struct mspro_sys_info *sys_info = NULL;
	struct mspro_sys_attr *s_attr = NULL;
	int rc, disk_id;
	unsigned long capacity;

	for (rc = 0; msb->attr_group.attrs[rc]; ++rc) {
		s_attr = FUNC14(msb->attr_group.attrs[rc]);

		if (s_attr->id == MSPRO_BLOCK_ID_DEVINFO)
			dev_info = s_attr->data;
		else if (s_attr->id == MSPRO_BLOCK_ID_SYSINFO)
			sys_info = s_attr->data;
	}

	if (!dev_info || !sys_info)
		return -ENODEV;

	msb->cylinders = FUNC3(dev_info->cylinders);
	msb->heads = FUNC3(dev_info->heads);
	msb->sectors_per_track = FUNC3(dev_info->sectors_per_track);

	msb->page_size = FUNC3(sys_info->unit_size);

	FUNC15(&mspro_block_disk_lock);
	disk_id = FUNC11(&mspro_block_disk_idr, card, 0, 256, GFP_KERNEL);
	FUNC16(&mspro_block_disk_lock);
	if (disk_id < 0)
		return disk_id;

	msb->disk = FUNC2(1 << MSPRO_BLOCK_PART_SHIFT);
	if (!msb->disk) {
		rc = -ENOMEM;
		goto out_release_id;
	}

	msb->queue = FUNC4(&msb->tag_set, &mspro_mq_ops, 2,
						BLK_MQ_F_SHOULD_MERGE);
	if (FUNC0(msb->queue)) {
		rc = FUNC1(msb->queue);
		msb->queue = NULL;
		goto out_put_disk;
	}

	msb->queue->queuedata = card;

	FUNC6(msb->queue, MSPRO_BLOCK_MAX_PAGES);
	FUNC8(msb->queue, MSPRO_BLOCK_MAX_SEGS);
	FUNC7(msb->queue,
				   MSPRO_BLOCK_MAX_PAGES * msb->page_size);

	msb->disk->major = major;
	msb->disk->first_minor = disk_id << MSPRO_BLOCK_PART_SHIFT;
	msb->disk->fops = &ms_block_bdops;
	msb->usage_count = 1;
	msb->disk->private_data = msb;
	msb->disk->queue = msb->queue;

	FUNC19(msb->disk->disk_name, "mspblk%d", disk_id);

	FUNC5(msb->queue, msb->page_size);

	capacity = FUNC3(sys_info->user_block_count);
	capacity *= FUNC3(sys_info->block_size);
	capacity *= msb->page_size >> 9;
	FUNC18(msb->disk, capacity);
	FUNC9(&card->dev, "capacity set %ld\n", capacity);

	FUNC10(&card->dev, msb->disk, NULL);
	msb->active = 1;
	return 0;

out_put_disk:
	FUNC17(msb->disk);
out_release_id:
	FUNC15(&mspro_block_disk_lock);
	FUNC12(&mspro_block_disk_idr, disk_id);
	FUNC16(&mspro_block_disk_lock);
	return rc;
}