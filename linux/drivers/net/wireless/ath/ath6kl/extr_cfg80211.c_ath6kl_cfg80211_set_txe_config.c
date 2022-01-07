
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct ath6kl_vif {scalar_t__ nw_type; scalar_t__ sme_state; int fw_vif_idx; int txe_intvl; } ;
struct ath6kl {int wmi; int fw_capabilities; } ;


 int ATH6KL_FW_CAPABILITY_TX_ERR_NOTIFY ;
 int ENOTCONN ;
 int EOPNOTSUPP ;
 scalar_t__ INFRA_NETWORK ;
 scalar_t__ SME_CONNECTED ;
 struct ath6kl* ath6kl_priv (struct net_device*) ;
 int ath6kl_wmi_set_txe_notify (int ,int ,int ,int ,int ) ;
 struct ath6kl_vif* netdev_priv (struct net_device*) ;
 int test_bit (int ,int ) ;

__attribute__((used)) static int ath6kl_cfg80211_set_txe_config(struct wiphy *wiphy,
       struct net_device *dev,
       u32 rate, u32 pkts, u32 intvl)
{
 struct ath6kl *ar = ath6kl_priv(dev);
 struct ath6kl_vif *vif = netdev_priv(dev);

 if (vif->nw_type != INFRA_NETWORK ||
     !test_bit(ATH6KL_FW_CAPABILITY_TX_ERR_NOTIFY, ar->fw_capabilities))
  return -EOPNOTSUPP;

 if (vif->sme_state != SME_CONNECTED)
  return -ENOTCONN;


 vif->txe_intvl = intvl;

 return ath6kl_wmi_set_txe_notify(ar->wmi, vif->fw_vif_idx,
      rate, pkts, intvl);
}
