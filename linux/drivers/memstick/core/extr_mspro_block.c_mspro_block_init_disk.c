
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct mspro_sys_info {int block_size; int user_block_count; int unit_size; int sectors_per_track; int heads; int cylinders; } ;
struct mspro_sys_attr {scalar_t__ id; struct mspro_sys_info* data; } ;
struct mspro_devinfo {int block_size; int user_block_count; int unit_size; int sectors_per_track; int heads; int cylinders; } ;
struct TYPE_13__ {scalar_t__* attrs; } ;
struct mspro_block_data {unsigned long cylinders; unsigned long heads; unsigned long sectors_per_track; unsigned long page_size; int usage_count; int active; TYPE_2__* disk; TYPE_5__* queue; int tag_set; TYPE_1__ attr_group; } ;
struct memstick_dev {int dev; } ;
struct TYPE_15__ {struct memstick_dev* queuedata; } ;
struct TYPE_14__ {int first_minor; int disk_name; TYPE_5__* queue; struct mspro_block_data* private_data; int * fops; int major; } ;


 int BLK_MQ_F_SHOULD_MERGE ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (TYPE_5__*) ;
 scalar_t__ MSPRO_BLOCK_ID_DEVINFO ;
 scalar_t__ MSPRO_BLOCK_ID_SYSINFO ;
 int MSPRO_BLOCK_MAX_PAGES ;
 int MSPRO_BLOCK_MAX_SEGS ;
 int MSPRO_BLOCK_PART_SHIFT ;
 int PTR_ERR (TYPE_5__*) ;
 TYPE_2__* alloc_disk (int) ;
 unsigned long be16_to_cpu (int ) ;
 TYPE_5__* blk_mq_init_sq_queue (int *,int *,int,int ) ;
 int blk_queue_logical_block_size (TYPE_5__*,int) ;
 int blk_queue_max_hw_sectors (TYPE_5__*,int) ;
 int blk_queue_max_segment_size (TYPE_5__*,int) ;
 int blk_queue_max_segments (TYPE_5__*,int ) ;
 int dev_dbg (int *,char*,unsigned long) ;
 int device_add_disk (int *,TYPE_2__*,int *) ;
 int idr_alloc (int *,struct memstick_dev*,int ,int,int ) ;
 int idr_remove (int *,int) ;
 int major ;
 struct mspro_block_data* memstick_get_drvdata (struct memstick_dev*) ;
 int ms_block_bdops ;
 int mspro_block_disk_idr ;
 int mspro_block_disk_lock ;
 struct mspro_sys_attr* mspro_from_sysfs_attr (scalar_t__) ;
 int mspro_mq_ops ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_disk (TYPE_2__*) ;
 int set_capacity (TYPE_2__*,unsigned long) ;
 int sprintf (int ,char*,int) ;

__attribute__((used)) static int mspro_block_init_disk(struct memstick_dev *card)
{
 struct mspro_block_data *msb = memstick_get_drvdata(card);
 struct mspro_devinfo *dev_info = ((void*)0);
 struct mspro_sys_info *sys_info = ((void*)0);
 struct mspro_sys_attr *s_attr = ((void*)0);
 int rc, disk_id;
 unsigned long capacity;

 for (rc = 0; msb->attr_group.attrs[rc]; ++rc) {
  s_attr = mspro_from_sysfs_attr(msb->attr_group.attrs[rc]);

  if (s_attr->id == MSPRO_BLOCK_ID_DEVINFO)
   dev_info = s_attr->data;
  else if (s_attr->id == MSPRO_BLOCK_ID_SYSINFO)
   sys_info = s_attr->data;
 }

 if (!dev_info || !sys_info)
  return -ENODEV;

 msb->cylinders = be16_to_cpu(dev_info->cylinders);
 msb->heads = be16_to_cpu(dev_info->heads);
 msb->sectors_per_track = be16_to_cpu(dev_info->sectors_per_track);

 msb->page_size = be16_to_cpu(sys_info->unit_size);

 mutex_lock(&mspro_block_disk_lock);
 disk_id = idr_alloc(&mspro_block_disk_idr, card, 0, 256, GFP_KERNEL);
 mutex_unlock(&mspro_block_disk_lock);
 if (disk_id < 0)
  return disk_id;

 msb->disk = alloc_disk(1 << MSPRO_BLOCK_PART_SHIFT);
 if (!msb->disk) {
  rc = -ENOMEM;
  goto out_release_id;
 }

 msb->queue = blk_mq_init_sq_queue(&msb->tag_set, &mspro_mq_ops, 2,
      BLK_MQ_F_SHOULD_MERGE);
 if (IS_ERR(msb->queue)) {
  rc = PTR_ERR(msb->queue);
  msb->queue = ((void*)0);
  goto out_put_disk;
 }

 msb->queue->queuedata = card;

 blk_queue_max_hw_sectors(msb->queue, MSPRO_BLOCK_MAX_PAGES);
 blk_queue_max_segments(msb->queue, MSPRO_BLOCK_MAX_SEGS);
 blk_queue_max_segment_size(msb->queue,
       MSPRO_BLOCK_MAX_PAGES * msb->page_size);

 msb->disk->major = major;
 msb->disk->first_minor = disk_id << MSPRO_BLOCK_PART_SHIFT;
 msb->disk->fops = &ms_block_bdops;
 msb->usage_count = 1;
 msb->disk->private_data = msb;
 msb->disk->queue = msb->queue;

 sprintf(msb->disk->disk_name, "mspblk%d", disk_id);

 blk_queue_logical_block_size(msb->queue, msb->page_size);

 capacity = be16_to_cpu(sys_info->user_block_count);
 capacity *= be16_to_cpu(sys_info->block_size);
 capacity *= msb->page_size >> 9;
 set_capacity(msb->disk, capacity);
 dev_dbg(&card->dev, "capacity set %ld\n", capacity);

 device_add_disk(&card->dev, msb->disk, ((void*)0));
 msb->active = 1;
 return 0;

out_put_disk:
 put_disk(msb->disk);
out_release_id:
 mutex_lock(&mspro_block_disk_lock);
 idr_remove(&mspro_block_disk_idr, disk_id);
 mutex_unlock(&mspro_block_disk_lock);
 return rc;
}
