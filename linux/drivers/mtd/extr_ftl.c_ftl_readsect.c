
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_blktrans_dev {int dummy; } ;


 int ftl_read (void*,char*,unsigned long,int) ;

__attribute__((used)) static int ftl_readsect(struct mtd_blktrans_dev *dev,
         unsigned long block, char *buf)
{
 return ftl_read((void *)dev, buf, block, 1);
}
