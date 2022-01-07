
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct wol_config {int dummy; } ;
struct lbs_private {int dev; int wol_gap; int wol_gpio; int ehs_remove_supported; } ;
struct TYPE_3__ {int action; } ;
struct TYPE_4__ {int size; } ;
struct cmd_ds_host_sleep {TYPE_1__ wol_conf; TYPE_2__ hdr; int gap; int gpio; int criteria; } ;
typedef int cmd_config ;


 int CMD_802_11_HOST_SLEEP_CFG ;
 int CMD_ACT_ACTION_NONE ;
 scalar_t__ EHS_REMOVE_WAKEUP ;
 int __lbs_cmd (struct lbs_private*,int ,TYPE_2__*,int ,int ,int ) ;
 int cpu_to_le16 (int) ;
 int cpu_to_le32 (scalar_t__) ;
 int lbs_ret_host_sleep_cfg ;
 int le16_to_cpu (int ) ;
 int memcpy (int *,int *,int) ;
 int netdev_info (int ,char*,int) ;

int lbs_host_sleep_cfg(struct lbs_private *priv, uint32_t criteria,
  struct wol_config *p_wol_config)
{
 struct cmd_ds_host_sleep cmd_config;
 int ret;






 if (criteria == EHS_REMOVE_WAKEUP && !priv->ehs_remove_supported)
  criteria = 0;

 cmd_config.hdr.size = cpu_to_le16(sizeof(cmd_config));
 cmd_config.criteria = cpu_to_le32(criteria);
 cmd_config.gpio = priv->wol_gpio;
 cmd_config.gap = priv->wol_gap;

 if (p_wol_config != ((void*)0))
  memcpy((uint8_t *)&cmd_config.wol_conf, (uint8_t *)p_wol_config,
    sizeof(struct wol_config));
 else
  cmd_config.wol_conf.action = CMD_ACT_ACTION_NONE;

 ret = __lbs_cmd(priv, CMD_802_11_HOST_SLEEP_CFG, &cmd_config.hdr,
   le16_to_cpu(cmd_config.hdr.size),
   lbs_ret_host_sleep_cfg, 0);
 if (!ret) {
  if (p_wol_config)
   memcpy((uint8_t *) p_wol_config,
     (uint8_t *)&cmd_config.wol_conf,
     sizeof(struct wol_config));
 } else {
  netdev_info(priv->dev, "HOST_SLEEP_CFG failed %d\n", ret);
 }

 return ret;
}
