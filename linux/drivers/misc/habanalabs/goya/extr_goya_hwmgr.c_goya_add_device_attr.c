
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_device {int dummy; } ;
struct attribute_group {int attrs; } ;


 int goya_dev_attrs ;

void goya_add_device_attr(struct hl_device *hdev,
   struct attribute_group *dev_attr_grp)
{
 dev_attr_grp->attrs = goya_dev_attrs;
}
