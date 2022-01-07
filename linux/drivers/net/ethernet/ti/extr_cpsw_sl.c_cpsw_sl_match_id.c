
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpsw_sl_dev_id {scalar_t__ device_id; } ;


 scalar_t__ strcmp (char const*,scalar_t__) ;

__attribute__((used)) static const struct cpsw_sl_dev_id *cpsw_sl_match_id(
  const struct cpsw_sl_dev_id *id,
  const char *device_id)
{
 if (!id || !device_id)
  return ((void*)0);

 while (id->device_id) {
  if (strcmp(device_id, id->device_id) == 0)
   return id;
  id++;
 }
 return ((void*)0);
}
