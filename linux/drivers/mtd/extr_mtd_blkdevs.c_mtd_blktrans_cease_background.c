
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_blktrans_dev {int bg_stop; } ;



int mtd_blktrans_cease_background(struct mtd_blktrans_dev *dev)
{
 return dev->bg_stop;
}
