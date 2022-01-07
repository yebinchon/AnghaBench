
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtdswap_dev {int mtd; } ;
struct mtd_blktrans_dev {int dummy; } ;


 struct mtdswap_dev* MTDSWAP_MBD_TO_MTDSWAP (struct mtd_blktrans_dev*) ;
 int mtd_sync (int ) ;

__attribute__((used)) static int mtdswap_flush(struct mtd_blktrans_dev *dev)
{
 struct mtdswap_dev *d = MTDSWAP_MBD_TO_MTDSWAP(dev);

 mtd_sync(d->mtd);
 return 0;
}
