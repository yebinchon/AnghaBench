
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wireless_dev {scalar_t__ iftype; } ;
struct wil6210_vif {int ptk_rekey_state; int enable_tx_key_worker; } ;
struct wil6210_priv {int wmi_wq; int eap_lock; int fw_capabilities; } ;
struct sk_buff {int dummy; } ;


 scalar_t__ NL80211_IFTYPE_STATION ;



 int WMI_FW_CAPABILITY_SPLIT_REKEY ;
 int queue_work (int ,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int test_bit (int ,int ) ;
 struct wireless_dev* vif_to_wdev (struct wil6210_vif*) ;
 struct wil6210_priv* vif_to_wil (struct wil6210_vif*) ;
 int wil_dbg_misc (struct wil6210_priv*,char*,int) ;
 int wil_err (struct wil6210_priv*,char*,int) ;
 int wil_skb_is_eap_4 (struct wil6210_priv*,struct sk_buff*) ;

void wil_tx_complete_handle_eapol(struct wil6210_vif *vif, struct sk_buff *skb)
{
 struct wil6210_priv *wil = vif_to_wil(vif);
 struct wireless_dev *wdev = vif_to_wdev(vif);
 bool q = 0;

 if (wdev->iftype != NL80211_IFTYPE_STATION ||
     !test_bit(WMI_FW_CAPABILITY_SPLIT_REKEY, wil->fw_capabilities))
  return;


 if (!wil_skb_is_eap_4(wil, skb))
  return;

 spin_lock_bh(&wil->eap_lock);
 switch (vif->ptk_rekey_state) {
 case 130:

  break;
 case 129:
  vif->ptk_rekey_state = 130;
  break;
 case 128:
  q = 1;
  break;
 default:
  wil_err(wil, "Unknown rekey state = %d",
   vif->ptk_rekey_state);
 }
 spin_unlock_bh(&wil->eap_lock);

 if (q) {
  q = queue_work(wil->wmi_wq, &vif->enable_tx_key_worker);
  wil_dbg_misc(wil, "queue_work of enable_tx_key_worker -> %d\n",
        q);
 }
}
