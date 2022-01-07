
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lbs_private {int dummy; } ;
struct TYPE_2__ {void* size; } ;
struct cmd_ds_802_11_rf_tx_power {int maxlevel; int minlevel; int curlevel; void* action; TYPE_1__ hdr; } ;
typedef int s16 ;
typedef int cmd ;


 int CMD_802_11_RF_TX_POWER ;
 int CMD_ACT_GET ;
 void* cpu_to_le16 (int) ;
 int lbs_cmd_with_response (struct lbs_private*,int ,struct cmd_ds_802_11_rf_tx_power*) ;
 int le16_to_cpu (int ) ;
 int memset (struct cmd_ds_802_11_rf_tx_power*,int ,int) ;

int lbs_get_tx_power(struct lbs_private *priv, s16 *curlevel, s16 *minlevel,
       s16 *maxlevel)
{
 struct cmd_ds_802_11_rf_tx_power cmd;
 int ret;

 memset(&cmd, 0, sizeof(cmd));
 cmd.hdr.size = cpu_to_le16(sizeof(cmd));
 cmd.action = cpu_to_le16(CMD_ACT_GET);

 ret = lbs_cmd_with_response(priv, CMD_802_11_RF_TX_POWER, &cmd);
 if (ret == 0) {
  *curlevel = le16_to_cpu(cmd.curlevel);
  if (minlevel)
   *minlevel = cmd.minlevel;
  if (maxlevel)
   *maxlevel = cmd.maxlevel;
 }

 return ret;
}
