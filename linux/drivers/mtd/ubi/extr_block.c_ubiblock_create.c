
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u64 ;
struct ubiblock_pdu {int dummy; } ;
struct TYPE_10__ {int queue_depth; int cmd_size; int nr_hw_queues; struct ubiblock* driver_data; int flags; int numa_node; int * ops; } ;
struct ubiblock {int ubi_num; int vol_id; struct gendisk* gd; TYPE_3__ tag_set; TYPE_1__* rq; int list; int wq; int leb_size; int dev_mutex; } ;
struct ubi_volume_info {int ubi_num; int vol_id; int name; int usable_leb_size; } ;
struct gendisk {scalar_t__ first_minor; int disk_name; TYPE_1__* queue; struct ubiblock* private_data; int major; int * fops; } ;
struct TYPE_9__ {struct ubiblock* queuedata; } ;


 int BLK_MQ_F_SHOULD_MERGE ;
 int EEXIST ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (TYPE_1__*) ;
 int NUMA_NO_NODE ;
 int PTR_ERR (TYPE_1__*) ;
 int UBI_MAX_SG_COUNT ;
 int add_disk (struct gendisk*) ;
 struct gendisk* alloc_disk (int) ;
 int alloc_workqueue (char*,int ,int ,int ) ;
 int blk_cleanup_queue (TYPE_1__*) ;
 int blk_mq_alloc_tag_set (TYPE_3__*) ;
 int blk_mq_free_tag_set (TYPE_3__*) ;
 TYPE_1__* blk_mq_init_queue (TYPE_3__*) ;
 int blk_queue_max_segments (TYPE_1__*,int ) ;
 int calc_disk_capacity (struct ubi_volume_info*,int *) ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*,int,int,int ) ;
 int devices_mutex ;
 int disk_to_dev (struct gendisk*) ;
 scalar_t__ find_dev_nolock (int,int) ;
 scalar_t__ idr_alloc (int *,struct ubiblock*,int ,int ,int ) ;
 int idr_remove (int *,scalar_t__) ;
 int kfree (struct ubiblock*) ;
 struct ubiblock* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*) ;
 int put_disk (struct gendisk*) ;
 int set_capacity (struct gendisk*,int ) ;
 int sprintf (int ,char*,int,int) ;
 int ubiblock_devices ;
 int ubiblock_major ;
 int ubiblock_minor_idr ;
 int ubiblock_mq_ops ;
 int ubiblock_ops ;

int ubiblock_create(struct ubi_volume_info *vi)
{
 struct ubiblock *dev;
 struct gendisk *gd;
 u64 disk_capacity;
 int ret;

 ret = calc_disk_capacity(vi, &disk_capacity);
 if (ret) {
  return ret;
 }


 mutex_lock(&devices_mutex);
 if (find_dev_nolock(vi->ubi_num, vi->vol_id)) {
  ret = -EEXIST;
  goto out_unlock;
 }

 dev = kzalloc(sizeof(struct ubiblock), GFP_KERNEL);
 if (!dev) {
  ret = -ENOMEM;
  goto out_unlock;
 }

 mutex_init(&dev->dev_mutex);

 dev->ubi_num = vi->ubi_num;
 dev->vol_id = vi->vol_id;
 dev->leb_size = vi->usable_leb_size;


 gd = alloc_disk(1);
 if (!gd) {
  pr_err("UBI: block: alloc_disk failed\n");
  ret = -ENODEV;
  goto out_free_dev;
 }

 gd->fops = &ubiblock_ops;
 gd->major = ubiblock_major;
 gd->first_minor = idr_alloc(&ubiblock_minor_idr, dev, 0, 0, GFP_KERNEL);
 if (gd->first_minor < 0) {
  dev_err(disk_to_dev(gd),
   "block: dynamic minor allocation failed");
  ret = -ENODEV;
  goto out_put_disk;
 }
 gd->private_data = dev;
 sprintf(gd->disk_name, "ubiblock%d_%d", dev->ubi_num, dev->vol_id);
 set_capacity(gd, disk_capacity);
 dev->gd = gd;

 dev->tag_set.ops = &ubiblock_mq_ops;
 dev->tag_set.queue_depth = 64;
 dev->tag_set.numa_node = NUMA_NO_NODE;
 dev->tag_set.flags = BLK_MQ_F_SHOULD_MERGE;
 dev->tag_set.cmd_size = sizeof(struct ubiblock_pdu);
 dev->tag_set.driver_data = dev;
 dev->tag_set.nr_hw_queues = 1;

 ret = blk_mq_alloc_tag_set(&dev->tag_set);
 if (ret) {
  dev_err(disk_to_dev(dev->gd), "blk_mq_alloc_tag_set failed");
  goto out_remove_minor;
 }

 dev->rq = blk_mq_init_queue(&dev->tag_set);
 if (IS_ERR(dev->rq)) {
  dev_err(disk_to_dev(gd), "blk_mq_init_queue failed");
  ret = PTR_ERR(dev->rq);
  goto out_free_tags;
 }
 blk_queue_max_segments(dev->rq, UBI_MAX_SG_COUNT);

 dev->rq->queuedata = dev;
 dev->gd->queue = dev->rq;





 dev->wq = alloc_workqueue("%s", 0, 0, gd->disk_name);
 if (!dev->wq) {
  ret = -ENOMEM;
  goto out_free_queue;
 }

 list_add_tail(&dev->list, &ubiblock_devices);


 add_disk(dev->gd);
 dev_info(disk_to_dev(dev->gd), "created from ubi%d:%d(%s)",
   dev->ubi_num, dev->vol_id, vi->name);
 mutex_unlock(&devices_mutex);
 return 0;

out_free_queue:
 blk_cleanup_queue(dev->rq);
out_free_tags:
 blk_mq_free_tag_set(&dev->tag_set);
out_remove_minor:
 idr_remove(&ubiblock_minor_idr, gd->first_minor);
out_put_disk:
 put_disk(dev->gd);
out_free_dev:
 kfree(dev);
out_unlock:
 mutex_unlock(&devices_mutex);

 return ret;
}
