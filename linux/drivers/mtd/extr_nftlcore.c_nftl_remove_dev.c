
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_blktrans_dev {int devnum; } ;
struct NFTLrecord {int EUNtable; int ReplUnitTable; } ;


 int del_mtd_blktrans_dev (struct mtd_blktrans_dev*) ;
 int kfree (int ) ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static void nftl_remove_dev(struct mtd_blktrans_dev *dev)
{
 struct NFTLrecord *nftl = (void *)dev;

 pr_debug("NFTL: remove_dev (i=%d)\n", dev->devnum);

 del_mtd_blktrans_dev(dev);
 kfree(nftl->ReplUnitTable);
 kfree(nftl->EUNtable);
}
