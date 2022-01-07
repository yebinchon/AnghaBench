
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vr_nor_mtd {int info; } ;


 int mtd_device_unregister (int ) ;

__attribute__((used)) static void vr_nor_destroy_partitions(struct vr_nor_mtd *p)
{
 mtd_device_unregister(p->info);
}
