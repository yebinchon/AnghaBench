
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vr_nor_mtd {int info; } ;


 int mtd_device_register (int ,int *,int ) ;

__attribute__((used)) static int vr_nor_init_partitions(struct vr_nor_mtd *p)
{


 return mtd_device_register(p->info, ((void*)0), 0);
}
