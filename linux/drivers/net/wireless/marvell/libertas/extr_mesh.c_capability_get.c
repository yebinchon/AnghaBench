
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mesh_capability; } ;
struct TYPE_4__ {TYPE_1__ val; } ;
struct mrvl_mesh_defaults {TYPE_2__ meshie; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int mesh_get_default_parameters (struct device*,struct mrvl_mesh_defaults*) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static ssize_t capability_get(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct mrvl_mesh_defaults defs;
 int ret;

 ret = mesh_get_default_parameters(dev, &defs);

 if (ret)
  return ret;

 return snprintf(buf, 5, "%d\n", defs.meshie.val.mesh_capability);
}
