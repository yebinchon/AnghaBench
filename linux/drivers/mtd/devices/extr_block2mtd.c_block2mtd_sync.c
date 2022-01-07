
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {struct block2mtd_dev* priv; } ;
struct block2mtd_dev {int blkdev; } ;


 int sync_blockdev (int ) ;

__attribute__((used)) static void block2mtd_sync(struct mtd_info *mtd)
{
 struct block2mtd_dev *dev = mtd->priv;
 sync_blockdev(dev->blkdev);
 return;
}
