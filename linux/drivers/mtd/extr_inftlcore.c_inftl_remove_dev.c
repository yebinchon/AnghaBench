
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_blktrans_dev {int devnum; } ;
struct INFTLrecord {int VUtable; int PUtable; } ;


 int del_mtd_blktrans_dev (struct mtd_blktrans_dev*) ;
 int kfree (int ) ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static void inftl_remove_dev(struct mtd_blktrans_dev *dev)
{
 struct INFTLrecord *inftl = (void *)dev;

 pr_debug("INFTL: remove_dev (i=%d)\n", dev->devnum);

 del_mtd_blktrans_dev(dev);

 kfree(inftl->PUtable);
 kfree(inftl->VUtable);
}
