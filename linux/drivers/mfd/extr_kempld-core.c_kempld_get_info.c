
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kempld_platform_data {int (* get_info ) (struct kempld_device_data*) ;} ;
struct TYPE_2__ {int major; int minor; int buildnr; int number; int version; } ;
struct kempld_device_data {TYPE_1__ info; int dev; } ;


 struct kempld_platform_data* dev_get_platdata (int ) ;
 int scnprintf (int ,int,char*,int ,char,char,int ) ;
 int stub1 (struct kempld_device_data*) ;

__attribute__((used)) static int kempld_get_info(struct kempld_device_data *pld)
{
 int ret;
 const struct kempld_platform_data *pdata = dev_get_platdata(pld->dev);
 char major, minor;

 ret = pdata->get_info(pld);
 if (ret)
  return ret;
 if (pld->info.major < 10)
  major = pld->info.major + '0';
 else
  major = (pld->info.major - 10) + 'A';
 if (pld->info.minor < 10)
  minor = pld->info.minor + '0';
 else
  minor = (pld->info.minor - 10) + 'A';

 ret = scnprintf(pld->info.version, sizeof(pld->info.version),
   "P%X%c%c.%04X", pld->info.number, major, minor,
   pld->info.buildnr);
 if (ret < 0)
  return ret;

 return 0;
}
