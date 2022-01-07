
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int dummy; } ;
struct mtd_chip_driver {int module; struct mtd_info* (* probe ) (struct map_info*) ;} ;
struct map_info {int dummy; } ;


 struct mtd_chip_driver* get_mtd_chip_driver (char const*) ;
 int module_put (int ) ;
 int request_module (char*,char const*) ;
 struct mtd_info* stub1 (struct map_info*) ;

struct mtd_info *do_map_probe(const char *name, struct map_info *map)
{
 struct mtd_chip_driver *drv;
 struct mtd_info *ret;

 drv = get_mtd_chip_driver(name);

 if (!drv && !request_module("%s", name))
  drv = get_mtd_chip_driver(name);

 if (!drv)
  return ((void*)0);

 ret = drv->probe(map);






 module_put(drv->module);

 return ret;
}
