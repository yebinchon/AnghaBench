
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct of_device_id {void const* data; scalar_t__* compatible; scalar_t__* type; scalar_t__* name; } ;
struct dsa_mv88e6xxx_pdata {int compatible; } ;
struct device {struct dsa_mv88e6xxx_pdata* platform_data; TYPE_1__* driver; } ;
struct TYPE_2__ {struct of_device_id* of_match_table; } ;


 int strcmp (int ,scalar_t__*) ;

__attribute__((used)) static const void *pdata_device_get_match_data(struct device *dev)
{
 const struct of_device_id *matches = dev->driver->of_match_table;
 const struct dsa_mv88e6xxx_pdata *pdata = dev->platform_data;

 for (; matches->name[0] || matches->type[0] || matches->compatible[0];
      matches++) {
  if (!strcmp(pdata->compatible, matches->compatible))
   return matches->data;
 }
 return ((void*)0);
}
