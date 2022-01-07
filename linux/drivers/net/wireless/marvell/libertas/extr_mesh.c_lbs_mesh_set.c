
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lbs_private {int mesh_dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {struct lbs_private* ml_priv; } ;


 int lbs_add_mesh (struct lbs_private*) ;
 int lbs_remove_mesh (struct lbs_private*) ;
 int sscanf (char const*,char*,int*) ;
 TYPE_1__* to_net_dev (struct device*) ;

__attribute__((used)) static ssize_t lbs_mesh_set(struct device *dev,
  struct device_attribute *attr, const char * buf, size_t count)
{
 struct lbs_private *priv = to_net_dev(dev)->ml_priv;
 int enable;

 sscanf(buf, "%x", &enable);
 enable = !!enable;
 if (enable == !!priv->mesh_dev)
  return count;

 if (enable)
  lbs_add_mesh(priv);
 else
  lbs_remove_mesh(priv);

 return count;
}
