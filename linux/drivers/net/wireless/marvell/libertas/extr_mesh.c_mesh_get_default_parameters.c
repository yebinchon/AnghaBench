
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mrvl_mesh_defaults {int dummy; } ;
struct lbs_private {int dummy; } ;
struct device {int dummy; } ;
struct cmd_ds_mesh_config {int * data; } ;
struct TYPE_2__ {struct lbs_private* ml_priv; } ;


 int CMD_ACT_MESH_CONFIG_GET ;
 int CMD_TYPE_MESH_GET_DEFAULTS ;
 int EOPNOTSUPP ;
 int lbs_mesh_config_send (struct lbs_private*,struct cmd_ds_mesh_config*,int ,int ) ;
 int memcpy (struct mrvl_mesh_defaults*,int *,int) ;
 int memset (struct cmd_ds_mesh_config*,int ,int) ;
 TYPE_1__* to_net_dev (struct device*) ;

__attribute__((used)) static int mesh_get_default_parameters(struct device *dev,
           struct mrvl_mesh_defaults *defs)
{
 struct lbs_private *priv = to_net_dev(dev)->ml_priv;
 struct cmd_ds_mesh_config cmd;
 int ret;

 memset(&cmd, 0, sizeof(struct cmd_ds_mesh_config));
 ret = lbs_mesh_config_send(priv, &cmd, CMD_ACT_MESH_CONFIG_GET,
       CMD_TYPE_MESH_GET_DEFAULTS);

 if (ret)
  return -EOPNOTSUPP;

 memcpy(defs, &cmd.data[0], sizeof(struct mrvl_mesh_defaults));

 return 0;
}
