
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdio_func {int dummy; } ;
struct sdio_driver {struct sdio_device_id* id_table; } ;
struct sdio_device_id {scalar_t__ device; scalar_t__ vendor; scalar_t__ class; } ;


 scalar_t__ sdio_match_one (struct sdio_func*,struct sdio_device_id const*) ;

__attribute__((used)) static const struct sdio_device_id *sdio_match_device(struct sdio_func *func,
 struct sdio_driver *sdrv)
{
 const struct sdio_device_id *ids;

 ids = sdrv->id_table;

 if (ids) {
  while (ids->class || ids->vendor || ids->device) {
   if (sdio_match_one(func, ids))
    return ids;
   ids++;
  }
 }

 return ((void*)0);
}
