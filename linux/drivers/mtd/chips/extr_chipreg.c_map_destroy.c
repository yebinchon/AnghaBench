
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtd_info {struct map_info* priv; } ;
struct map_info {TYPE_1__* fldrv; } ;
struct TYPE_2__ {int module; int (* destroy ) (struct mtd_info*) ;} ;


 int kfree (struct mtd_info*) ;
 int module_put (int ) ;
 int stub1 (struct mtd_info*) ;

void map_destroy(struct mtd_info *mtd)
{
 struct map_info *map = mtd->priv;

 if (map->fldrv->destroy)
  map->fldrv->destroy(mtd);

 module_put(map->fldrv->module);

 kfree(mtd);
}
