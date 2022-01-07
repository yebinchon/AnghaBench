
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_blktrans_dev {int dummy; } ;
typedef int partition_t ;


 int del_mtd_blktrans_dev (struct mtd_blktrans_dev*) ;
 int ftl_freepart (int *) ;

__attribute__((used)) static void ftl_remove_dev(struct mtd_blktrans_dev *dev)
{
 del_mtd_blktrans_dev(dev);
 ftl_freepart((partition_t *)dev);
}
