
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct docg3_cascade {scalar_t__* floors; } ;


 int DOC_MAX_NBFLOORS ;
 int device_create_file (struct device*,int *) ;
 int device_remove_file (struct device*,int *) ;
 int ** doc_sys_attrs ;

__attribute__((used)) static int doc_register_sysfs(struct platform_device *pdev,
         struct docg3_cascade *cascade)
{
 struct device *dev = &pdev->dev;
 int floor;
 int ret;
 int i;

 for (floor = 0;
      floor < DOC_MAX_NBFLOORS && cascade->floors[floor];
      floor++) {
  for (i = 0; i < 4; i++) {
   ret = device_create_file(dev, &doc_sys_attrs[floor][i]);
   if (ret)
    goto remove_files;
  }
 }

 return 0;

remove_files:
 do {
  while (--i >= 0)
   device_remove_file(dev, &doc_sys_attrs[floor][i]);
  i = 4;
 } while (--floor >= 0);

 return ret;
}
