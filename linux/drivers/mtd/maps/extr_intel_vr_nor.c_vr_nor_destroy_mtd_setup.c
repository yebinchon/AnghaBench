
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vr_nor_mtd {int info; } ;


 int map_destroy (int ) ;

__attribute__((used)) static void vr_nor_destroy_mtd_setup(struct vr_nor_mtd *p)
{
 map_destroy(p->info);
}
