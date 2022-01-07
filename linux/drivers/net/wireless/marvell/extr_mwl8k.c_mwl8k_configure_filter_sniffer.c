
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwl8k_priv {int sniffer_enabled; int vif_list; } ;
struct ieee80211_hw {int wiphy; struct mwl8k_priv* priv; } ;


 unsigned int FIF_ALLMULTI ;
 unsigned int FIF_BCN_PRBRESP_PROMISC ;
 unsigned int FIF_CONTROL ;
 unsigned int FIF_OTHER_BSS ;
 int list_empty (int *) ;
 scalar_t__ mwl8k_cmd_enable_sniffer (struct ieee80211_hw*,int) ;
 scalar_t__ net_ratelimit () ;
 int wiphy_info (int ,char*) ;

__attribute__((used)) static int
mwl8k_configure_filter_sniffer(struct ieee80211_hw *hw,
          unsigned int changed_flags,
          unsigned int *total_flags)
{
 struct mwl8k_priv *priv = hw->priv;






 if (!list_empty(&priv->vif_list)) {
  if (net_ratelimit())
   wiphy_info(hw->wiphy,
       "not enabling sniffer mode because STA interface is active\n");
  return 0;
 }

 if (!priv->sniffer_enabled) {
  if (mwl8k_cmd_enable_sniffer(hw, 1))
   return 0;
  priv->sniffer_enabled = 1;
 }

 *total_flags &= FIF_ALLMULTI |
   FIF_BCN_PRBRESP_PROMISC | FIF_CONTROL |
   FIF_OTHER_BSS;

 return 1;
}
