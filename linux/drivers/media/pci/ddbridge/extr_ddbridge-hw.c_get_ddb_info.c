
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct ddb_info {int dummy; } ;
struct ddb_device_id {scalar_t__ vendor; scalar_t__ device; scalar_t__ subvendor; scalar_t__ subdevice; struct ddb_info const* info; } ;


 int ARRAY_SIZE (struct ddb_device_id*) ;
 struct ddb_device_id* ddb_device_ids ;
 struct ddb_info const ddb_none ;

const struct ddb_info *get_ddb_info(u16 vendor, u16 device,
        u16 subvendor, u16 subdevice)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(ddb_device_ids); i++) {
  const struct ddb_device_id *id = &ddb_device_ids[i];

  if (vendor == id->vendor &&
      device == id->device &&
      subvendor == id->subvendor &&
      (subdevice == id->subdevice ||
       id->subdevice == 0xffff))
   return id->info;
 }

 return &ddb_none;
}
