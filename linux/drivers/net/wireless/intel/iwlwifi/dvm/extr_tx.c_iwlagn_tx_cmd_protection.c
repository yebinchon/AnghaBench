
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iwl_priv {int dummy; } ;
struct TYPE_4__ {TYPE_1__* rates; } ;
struct ieee80211_tx_info {int flags; TYPE_2__ control; } ;
typedef int __le32 ;
typedef int __le16 ;
struct TYPE_3__ {int flags; } ;


 int IEEE80211_TX_CTL_AMPDU ;
 int IEEE80211_TX_RC_USE_CTS_PROTECT ;
 int IEEE80211_TX_RC_USE_RTS_CTS ;
 int TX_CMD_FLG_PROT_REQUIRE_MSK ;

__attribute__((used)) static void iwlagn_tx_cmd_protection(struct iwl_priv *priv,
         struct ieee80211_tx_info *info,
         __le16 fc, __le32 *tx_flags)
{
 if (info->control.rates[0].flags & IEEE80211_TX_RC_USE_RTS_CTS ||
     info->control.rates[0].flags & IEEE80211_TX_RC_USE_CTS_PROTECT ||
     info->flags & IEEE80211_TX_CTL_AMPDU)
  *tx_flags |= TX_CMD_FLG_PROT_REQUIRE_MSK;
}
