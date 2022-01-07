
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssfdcr_record {int logic_block_map; } ;
struct mtd_blktrans_dev {int devnum; } ;


 int del_mtd_blktrans_dev (struct mtd_blktrans_dev*) ;
 int kfree (int ) ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static void ssfdcr_remove_dev(struct mtd_blktrans_dev *dev)
{
 struct ssfdcr_record *ssfdc = (struct ssfdcr_record *)dev;

 pr_debug("SSFDC_RO: remove_dev (i=%d)\n", dev->devnum);

 del_mtd_blktrans_dev(dev);
 kfree(ssfdc->logic_block_map);
}
