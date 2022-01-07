
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct lbs_private {int fwcapinfo; } ;
struct cmd_ds_mesh_config {int dummy; } ;


 int EOPNOTSUPP ;
 int FW_CAPINFO_PERSISTENT_CONFIG ;
 int __lbs_mesh_config_send (struct lbs_private*,struct cmd_ds_mesh_config*,int ,int ) ;

__attribute__((used)) static int lbs_mesh_config_send(struct lbs_private *priv,
    struct cmd_ds_mesh_config *cmd,
    uint16_t action, uint16_t type)
{
 int ret;

 if (!(priv->fwcapinfo & FW_CAPINFO_PERSISTENT_CONFIG))
  return -EOPNOTSUPP;

 ret = __lbs_mesh_config_send(priv, cmd, action, type);
 return ret;
}
