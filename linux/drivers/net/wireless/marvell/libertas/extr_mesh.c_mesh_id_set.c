
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mrvl_meshie_val {int dummy; } ;
struct TYPE_3__ {int mesh_id_len; struct mrvl_meshie* mesh_id; } ;
struct mrvl_meshie {int len; TYPE_1__ val; } ;
struct mrvl_mesh_defaults {char const meshie; } ;
struct lbs_private {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cmd_ds_mesh_config {int length; int * data; } ;
typedef int ssize_t ;
struct TYPE_4__ {struct lbs_private* ml_priv; } ;


 int CMD_ACT_MESH_CONFIG_SET ;
 int CMD_TYPE_MESH_SET_MESH_IE ;
 int EINVAL ;
 int IEEE80211_MAX_SSID_LEN ;
 int cpu_to_le16 (int) ;
 int lbs_mesh_config_send (struct lbs_private*,struct cmd_ds_mesh_config*,int ,int ) ;
 int memcpy (struct mrvl_meshie*,char const*,int) ;
 int memset (struct cmd_ds_mesh_config*,int ,int) ;
 int mesh_get_default_parameters (struct device*,struct mrvl_mesh_defaults*) ;
 int strlen (char const*) ;
 TYPE_2__* to_net_dev (struct device*) ;

__attribute__((used)) static ssize_t mesh_id_set(struct device *dev, struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct cmd_ds_mesh_config cmd;
 struct mrvl_mesh_defaults defs;
 struct mrvl_meshie *ie;
 struct lbs_private *priv = to_net_dev(dev)->ml_priv;
 int len;
 int ret;

 if (count < 2 || count > IEEE80211_MAX_SSID_LEN + 1)
  return -EINVAL;

 memset(&cmd, 0, sizeof(struct cmd_ds_mesh_config));
 ie = (struct mrvl_meshie *) &cmd.data[0];


 ret = mesh_get_default_parameters(dev, &defs);

 cmd.length = cpu_to_le16(sizeof(struct mrvl_meshie));


 memcpy(ie, &defs.meshie, sizeof(struct mrvl_meshie));

 len = count - 1;
 memcpy(ie->val.mesh_id, buf, len);

 ie->val.mesh_id_len = len;

 ie->len = sizeof(struct mrvl_meshie_val) - IEEE80211_MAX_SSID_LEN + len;

 ret = lbs_mesh_config_send(priv, &cmd, CMD_ACT_MESH_CONFIG_SET,
       CMD_TYPE_MESH_SET_MESH_IE);
 if (ret)
  return ret;

 return strlen(buf);
}
