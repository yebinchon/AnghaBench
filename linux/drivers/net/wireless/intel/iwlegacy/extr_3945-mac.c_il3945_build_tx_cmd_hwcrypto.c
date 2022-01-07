
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct il_priv {TYPE_2__* stations; } ;
struct il_hw_key {int cipher; int keylen; int key; } ;
struct TYPE_5__ {scalar_t__ payload; } ;
struct il_device_cmd {TYPE_1__ cmd; } ;
struct il3945_tx_cmd {int sec_ctl; int * key; } ;
struct TYPE_8__ {TYPE_3__* hw_key; } ;
struct ieee80211_tx_info {TYPE_4__ control; } ;
struct TYPE_7__ {int hw_key_idx; } ;
struct TYPE_6__ {struct il_hw_key keyinfo; } ;


 int D_TX (char*,...) ;
 int IL_ERR (char*,int) ;
 int TX_CMD_SEC_CCM ;
 int TX_CMD_SEC_KEY128 ;
 int TX_CMD_SEC_MSK ;
 int TX_CMD_SEC_SHIFT ;
 int TX_CMD_SEC_WEP ;




 int memcpy (int *,int ,int ) ;

__attribute__((used)) static void
il3945_build_tx_cmd_hwcrypto(struct il_priv *il, struct ieee80211_tx_info *info,
        struct il_device_cmd *cmd,
        struct sk_buff *skb_frag, int sta_id)
{
 struct il3945_tx_cmd *tx_cmd = (struct il3945_tx_cmd *)cmd->cmd.payload;
 struct il_hw_key *keyinfo = &il->stations[sta_id].keyinfo;

 tx_cmd->sec_ctl = 0;

 switch (keyinfo->cipher) {
 case 131:
  tx_cmd->sec_ctl = TX_CMD_SEC_CCM;
  memcpy(tx_cmd->key, keyinfo->key, keyinfo->keylen);
  D_TX("tx_cmd with AES hwcrypto\n");
  break;

 case 130:
  break;

 case 129:
  tx_cmd->sec_ctl |= TX_CMD_SEC_KEY128;

 case 128:
  tx_cmd->sec_ctl |=
      TX_CMD_SEC_WEP | (info->control.hw_key->
          hw_key_idx & TX_CMD_SEC_MSK) <<
      TX_CMD_SEC_SHIFT;

  memcpy(&tx_cmd->key[3], keyinfo->key, keyinfo->keylen);

  D_TX("Configuring packet for WEP encryption " "with key %d\n",
       info->control.hw_key->hw_key_idx);
  break;

 default:
  IL_ERR("Unknown encode cipher %x\n", keyinfo->cipher);
  break;
 }
}
