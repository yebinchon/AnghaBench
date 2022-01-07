
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct lbs_private {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cmd_ds_mesh_access {int * data; } ;
typedef int ssize_t ;
typedef int mesh_access ;
struct TYPE_2__ {struct lbs_private* ml_priv; } ;


 int CMD_ACT_MESH_SET_ANYCAST ;
 int cpu_to_le32 (int ) ;
 int lbs_mesh_access (struct lbs_private*,int ,struct cmd_ds_mesh_access*) ;
 int memset (struct cmd_ds_mesh_access*,int ,int) ;
 int sscanf (char const*,char*,int *) ;
 int strlen (char const*) ;
 TYPE_1__* to_net_dev (struct device*) ;

__attribute__((used)) static ssize_t lbs_anycast_set(struct device *dev,
  struct device_attribute *attr, const char * buf, size_t count)
{
 struct lbs_private *priv = to_net_dev(dev)->ml_priv;
 struct cmd_ds_mesh_access mesh_access;
 uint32_t datum;
 int ret;

 memset(&mesh_access, 0, sizeof(mesh_access));
 sscanf(buf, "%x", &datum);
 mesh_access.data[0] = cpu_to_le32(datum);

 ret = lbs_mesh_access(priv, CMD_ACT_MESH_SET_ANYCAST, &mesh_access);
 if (ret)
  return ret;

 return strlen(buf);
}
