
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ath10k_htt {int dummy; } ;
struct ath10k {int hw; struct ath10k_htt htt; } ;
typedef enum ath10k_mac_tx_path { ____Placeholder_ath10k_mac_tx_path } ath10k_mac_tx_path ;
typedef enum ath10k_hw_txrx_mode { ____Placeholder_ath10k_hw_txrx_mode } ath10k_hw_txrx_mode ;






 int EINVAL ;
 int WARN_ON_ONCE (int) ;
 int ath10k_htt_mgmt_tx (struct ath10k_htt*,struct sk_buff*) ;
 int ath10k_htt_tx (struct ath10k_htt*,int,struct sk_buff*) ;
 int ath10k_mac_tx_wmi_mgmt (struct ath10k*,struct sk_buff*) ;
 int ath10k_warn (struct ath10k*,char*,int) ;
 int ieee80211_free_txskb (int ,struct sk_buff*) ;

__attribute__((used)) static int ath10k_mac_tx_submit(struct ath10k *ar,
    enum ath10k_hw_txrx_mode txmode,
    enum ath10k_mac_tx_path txpath,
    struct sk_buff *skb)
{
 struct ath10k_htt *htt = &ar->htt;
 int ret = -EINVAL;

 switch (txpath) {
 case 131:
  ret = ath10k_htt_tx(htt, txmode, skb);
  break;
 case 130:
  ret = ath10k_htt_mgmt_tx(htt, skb);
  break;
 case 128:
  ret = ath10k_mac_tx_wmi_mgmt(ar, skb);
  break;
 case 129:
  WARN_ON_ONCE(1);
  ret = -EINVAL;
  break;
 }

 if (ret) {
  ath10k_warn(ar, "failed to transmit packet, dropping: %d\n",
       ret);
  ieee80211_free_txskb(ar->hw, skb);
 }

 return ret;
}
