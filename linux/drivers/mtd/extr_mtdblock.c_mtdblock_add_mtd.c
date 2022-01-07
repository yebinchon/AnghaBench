
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; int readonly; struct mtd_blktrans_ops* tr; int devnum; struct mtd_info* mtd; } ;
struct mtdblk_dev {TYPE_1__ mbd; } ;
struct mtd_info {int size; int flags; int index; } ;
struct mtd_blktrans_ops {int dummy; } ;


 int GFP_KERNEL ;
 int MTD_WRITEABLE ;
 scalar_t__ add_mtd_blktrans_dev (TYPE_1__*) ;
 int kfree (struct mtdblk_dev*) ;
 struct mtdblk_dev* kzalloc (int,int ) ;

__attribute__((used)) static void mtdblock_add_mtd(struct mtd_blktrans_ops *tr, struct mtd_info *mtd)
{
 struct mtdblk_dev *dev = kzalloc(sizeof(*dev), GFP_KERNEL);

 if (!dev)
  return;

 dev->mbd.mtd = mtd;
 dev->mbd.devnum = mtd->index;

 dev->mbd.size = mtd->size >> 9;
 dev->mbd.tr = tr;

 if (!(mtd->flags & MTD_WRITEABLE))
  dev->mbd.readonly = 1;

 if (add_mtd_blktrans_dev(&dev->mbd))
  kfree(dev);
}
