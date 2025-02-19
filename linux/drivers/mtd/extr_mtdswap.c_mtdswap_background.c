
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtdswap_dev {int dummy; } ;
struct mtd_blktrans_dev {int dummy; } ;


 struct mtdswap_dev* MTDSWAP_MBD_TO_MTDSWAP (struct mtd_blktrans_dev*) ;
 scalar_t__ mtd_blktrans_cease_background (struct mtd_blktrans_dev*) ;
 int mtdswap_gc (struct mtdswap_dev*,int) ;

__attribute__((used)) static void mtdswap_background(struct mtd_blktrans_dev *dev)
{
 struct mtdswap_dev *d = MTDSWAP_MBD_TO_MTDSWAP(dev);
 int ret;

 while (1) {
  ret = mtdswap_gc(d, 1);
  if (ret || mtd_blktrans_cease_background(dev))
   return;
 }
}
