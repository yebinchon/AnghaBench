
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct sk_buff {int len; } ;
struct ieee80211_txq {TYPE_2__* sta; } ;
struct ath10k_sta {int last_tx_bitrate; } ;
struct TYPE_3__ {int svc_map; } ;
struct ath10k {int data_lock; TYPE_1__ wmi; } ;
struct TYPE_4__ {scalar_t__ drv_priv; } ;


 scalar_t__ IEEE80211_ATF_OVERHEAD ;
 scalar_t__ IEEE80211_ATF_OVERHEAD_IFS ;
 int WMI_SERVICE_REPORT_AIRTIME ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static u16 ath10k_mac_update_airtime(struct ath10k *ar,
         struct ieee80211_txq *txq,
         struct sk_buff *skb)
{
 struct ath10k_sta *arsta;
 u32 pktlen;
 u16 airtime = 0;

 if (!txq || !txq->sta)
  return airtime;

 if (test_bit(WMI_SERVICE_REPORT_AIRTIME, ar->wmi.svc_map))
  return airtime;

 spin_lock_bh(&ar->data_lock);
 arsta = (struct ath10k_sta *)txq->sta->drv_priv;

 pktlen = skb->len + 38;
 if (arsta->last_tx_bitrate) {

  airtime = (pktlen * 8 * (1000 / 100))
    / arsta->last_tx_bitrate;

  airtime += IEEE80211_ATF_OVERHEAD_IFS;
 } else {





  airtime = (pktlen * 8 * (1000 / 100)) / 60;
  airtime += IEEE80211_ATF_OVERHEAD;
 }
 spin_unlock_bh(&ar->data_lock);

 return airtime;
}
