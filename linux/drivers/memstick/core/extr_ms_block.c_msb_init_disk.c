
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct msb_data {scalar_t__ disk_id; int page_size; unsigned long pages_in_block; unsigned long logical_block_count; int usage_count; TYPE_1__* disk; scalar_t__ read_only; int prealloc_sg; int io_work; int io_queue; TYPE_5__* queue; int tag_set; } ;
struct memstick_dev {int dev; } ;
struct TYPE_14__ {struct memstick_dev* queuedata; } ;
struct TYPE_13__ {int flags; TYPE_5__* queue; struct msb_data* private_data; int * fops; int disk_name; } ;


 int BLK_MQ_F_SHOULD_MERGE ;
 int ENOMEM ;
 int GENHD_FL_EXT_DEVT ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (TYPE_5__*) ;
 int MS_BLOCK_MAX_PAGES ;
 scalar_t__ MS_BLOCK_MAX_SEGS ;
 int PTR_ERR (TYPE_5__*) ;
 int WQ_MEM_RECLAIM ;
 TYPE_1__* alloc_disk (int ) ;
 int alloc_ordered_workqueue (char*,int ) ;
 TYPE_5__* blk_mq_init_sq_queue (int *,int *,int,int ) ;
 int blk_queue_logical_block_size (TYPE_5__*,int) ;
 int blk_queue_max_hw_sectors (TYPE_5__*,int) ;
 int blk_queue_max_segment_size (TYPE_5__*,int) ;
 int blk_queue_max_segments (TYPE_5__*,scalar_t__) ;
 int dbg (char*,...) ;
 int device_add_disk (int *,TYPE_1__*,int *) ;
 scalar_t__ idr_alloc (int *,struct memstick_dev*,int ,int,int ) ;
 int idr_remove (int *,int) ;
 struct msb_data* memstick_get_drvdata (struct memstick_dev*) ;
 int msb_bdops ;
 int msb_disk_idr ;
 int msb_disk_lock ;
 int msb_io_work ;
 int msb_mq_ops ;
 int msb_start (struct memstick_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_disk (TYPE_1__*) ;
 int set_capacity (TYPE_1__*,unsigned long) ;
 int set_disk_ro (TYPE_1__*,int) ;
 int sg_init_table (int ,scalar_t__) ;
 int sprintf (int ,char*,int) ;

__attribute__((used)) static int msb_init_disk(struct memstick_dev *card)
{
 struct msb_data *msb = memstick_get_drvdata(card);
 int rc;
 unsigned long capacity;

 mutex_lock(&msb_disk_lock);
 msb->disk_id = idr_alloc(&msb_disk_idr, card, 0, 256, GFP_KERNEL);
 mutex_unlock(&msb_disk_lock);

 if (msb->disk_id < 0)
  return msb->disk_id;

 msb->disk = alloc_disk(0);
 if (!msb->disk) {
  rc = -ENOMEM;
  goto out_release_id;
 }

 msb->queue = blk_mq_init_sq_queue(&msb->tag_set, &msb_mq_ops, 2,
      BLK_MQ_F_SHOULD_MERGE);
 if (IS_ERR(msb->queue)) {
  rc = PTR_ERR(msb->queue);
  msb->queue = ((void*)0);
  goto out_put_disk;
 }

 msb->queue->queuedata = card;

 blk_queue_max_hw_sectors(msb->queue, MS_BLOCK_MAX_PAGES);
 blk_queue_max_segments(msb->queue, MS_BLOCK_MAX_SEGS);
 blk_queue_max_segment_size(msb->queue,
       MS_BLOCK_MAX_PAGES * msb->page_size);
 blk_queue_logical_block_size(msb->queue, msb->page_size);

 sprintf(msb->disk->disk_name, "msblk%d", msb->disk_id);
 msb->disk->fops = &msb_bdops;
 msb->disk->private_data = msb;
 msb->disk->queue = msb->queue;
 msb->disk->flags |= GENHD_FL_EXT_DEVT;

 capacity = msb->pages_in_block * msb->logical_block_count;
 capacity *= (msb->page_size / 512);
 set_capacity(msb->disk, capacity);
 dbg("Set total disk size to %lu sectors", capacity);

 msb->usage_count = 1;
 msb->io_queue = alloc_ordered_workqueue("ms_block", WQ_MEM_RECLAIM);
 INIT_WORK(&msb->io_work, msb_io_work);
 sg_init_table(msb->prealloc_sg, MS_BLOCK_MAX_SEGS+1);

 if (msb->read_only)
  set_disk_ro(msb->disk, 1);

 msb_start(card);
 device_add_disk(&card->dev, msb->disk, ((void*)0));
 dbg("Disk added");
 return 0;

out_put_disk:
 put_disk(msb->disk);
out_release_id:
 mutex_lock(&msb_disk_lock);
 idr_remove(&msb_disk_idr, msb->disk_id);
 mutex_unlock(&msb_disk_lock);
 return rc;
}
