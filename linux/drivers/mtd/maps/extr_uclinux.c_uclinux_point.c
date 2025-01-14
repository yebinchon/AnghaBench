
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {struct map_info* priv; } ;
struct map_info {int phys; void* virt; } ;
typedef int resource_size_t ;
typedef int loff_t ;



__attribute__((used)) static int uclinux_point(struct mtd_info *mtd, loff_t from, size_t len,
 size_t *retlen, void **virt, resource_size_t *phys)
{
 struct map_info *map = mtd->priv;
 *virt = map->virt + from;
 if (phys)
  *phys = map->phys + from;
 *retlen = len;
 return(0);
}
