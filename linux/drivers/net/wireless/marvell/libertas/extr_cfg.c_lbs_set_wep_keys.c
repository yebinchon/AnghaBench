
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lbs_private {int* wep_key_len; int wep_tx_key; int * wep_key; } ;
struct TYPE_2__ {void* size; } ;
struct cmd_ds_802_11_set_wep {int * keymaterial; int * keytype; void* action; void* keyindex; TYPE_1__ hdr; } ;
typedef int cmd ;


 int CMD_802_11_SET_WEP ;
 int CMD_ACT_ADD ;
 int CMD_TYPE_WEP_104_BIT ;
 int CMD_TYPE_WEP_40_BIT ;


 void* cpu_to_le16 (int) ;
 int lbs_cmd_with_response (struct lbs_private*,int ,struct cmd_ds_802_11_set_wep*) ;
 int lbs_remove_wep_keys (struct lbs_private*) ;
 int memcpy (int ,int ,int) ;
 int memset (struct cmd_ds_802_11_set_wep*,int ,int) ;

__attribute__((used)) static int lbs_set_wep_keys(struct lbs_private *priv)
{
 struct cmd_ds_802_11_set_wep cmd;
 int i;
 int ret;
 if (priv->wep_key_len[0] || priv->wep_key_len[1] ||
     priv->wep_key_len[2] || priv->wep_key_len[3]) {

  memset(&cmd, 0, sizeof(cmd));
  cmd.hdr.size = cpu_to_le16(sizeof(cmd));
  cmd.keyindex = cpu_to_le16(priv->wep_tx_key);
  cmd.action = cpu_to_le16(CMD_ACT_ADD);

  for (i = 0; i < 4; i++) {
   switch (priv->wep_key_len[i]) {
   case 128:
    cmd.keytype[i] = CMD_TYPE_WEP_40_BIT;
    break;
   case 129:
    cmd.keytype[i] = CMD_TYPE_WEP_104_BIT;
    break;
   default:
    cmd.keytype[i] = 0;
    break;
   }
   memcpy(cmd.keymaterial[i], priv->wep_key[i],
          priv->wep_key_len[i]);
  }

  ret = lbs_cmd_with_response(priv, CMD_802_11_SET_WEP, &cmd);
 } else {

  ret = lbs_remove_wep_keys(priv);
 }

 return ret;
}
