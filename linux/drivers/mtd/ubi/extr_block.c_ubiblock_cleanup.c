
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ubiblock {TYPE_1__* gd; int tag_set; int rq; int wq; } ;
struct TYPE_4__ {int first_minor; } ;


 int blk_cleanup_queue (int ) ;
 int blk_mq_free_tag_set (int *) ;
 int del_gendisk (TYPE_1__*) ;
 int destroy_workqueue (int ) ;
 int dev_info (int ,char*) ;
 int disk_to_dev (TYPE_1__*) ;
 int idr_remove (int *,int ) ;
 int put_disk (TYPE_1__*) ;
 int ubiblock_minor_idr ;

__attribute__((used)) static void ubiblock_cleanup(struct ubiblock *dev)
{

 del_gendisk(dev->gd);

 destroy_workqueue(dev->wq);

 blk_cleanup_queue(dev->rq);
 blk_mq_free_tag_set(&dev->tag_set);
 dev_info(disk_to_dev(dev->gd), "released");
 idr_remove(&ubiblock_minor_idr, dev->gd->first_minor);
 put_disk(dev->gd);
}
