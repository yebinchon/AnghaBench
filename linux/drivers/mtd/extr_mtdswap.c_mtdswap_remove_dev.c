
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtdswap_dev {int dummy; } ;
struct mtd_blktrans_dev {int dummy; } ;


 struct mtdswap_dev* MTDSWAP_MBD_TO_MTDSWAP (struct mtd_blktrans_dev*) ;
 int del_mtd_blktrans_dev (struct mtd_blktrans_dev*) ;
 int kfree (struct mtdswap_dev*) ;
 int mtdswap_cleanup (struct mtdswap_dev*) ;

__attribute__((used)) static void mtdswap_remove_dev(struct mtd_blktrans_dev *dev)
{
 struct mtdswap_dev *d = MTDSWAP_MBD_TO_MTDSWAP(dev);

 del_mtd_blktrans_dev(dev);
 mtdswap_cleanup(d);
 kfree(d);
}
