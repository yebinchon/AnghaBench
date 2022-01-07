
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
struct kempld_device_data {TYPE_1__ info; } ;



__attribute__((used)) static const char *kempld_get_type_string(struct kempld_device_data *pld)
{
 const char *version_type;

 switch (pld->info.type) {
 case 0:
  version_type = "release";
  break;
 case 1:
  version_type = "debug";
  break;
 case 2:
  version_type = "custom";
  break;
 default:
  version_type = "unspecified";
  break;
 }

 return version_type;
}
