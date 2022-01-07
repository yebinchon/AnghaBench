
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_blktrans_dev {int mtd; } ;


 scalar_t__ mtd_write (int ,unsigned long,int,size_t*,char*) ;

__attribute__((used)) static int mtdblock_writesect(struct mtd_blktrans_dev *dev,
         unsigned long block, char *buf)
{
 size_t retlen;

 if (mtd_write(dev->mtd, (block * 512), 512, &retlen, buf))
  return 1;
 return 0;
}
