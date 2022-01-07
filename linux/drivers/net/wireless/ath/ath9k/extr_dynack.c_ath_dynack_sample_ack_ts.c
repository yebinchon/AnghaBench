
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {scalar_t__ data; } ;
struct ieee80211_hdr {int addr1; } ;
struct TYPE_2__ {size_t t_rb; size_t h_rb; int * tstamp; } ;
struct ath_dynack {int qlock; TYPE_1__ ack_rbf; int enabled; } ;
struct ath_hw {struct ath_dynack dynack; } ;
struct ath_common {int dummy; } ;


 int ATH_DYN_BUF ;
 int DYNACK ;
 int INCR (size_t,int ) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath_dbg (struct ath_common*,int ,char*,int ,size_t,size_t) ;
 int ath_dynack_bssidmask (struct ath_hw*,int ) ;
 int ath_dynack_compute_to (struct ath_hw*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void ath_dynack_sample_ack_ts(struct ath_hw *ah, struct sk_buff *skb,
         u32 ts)
{
 struct ath_dynack *da = &ah->dynack;
 struct ath_common *common = ath9k_hw_common(ah);
 struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;

 if (!da->enabled || !ath_dynack_bssidmask(ah, hdr->addr1))
  return;

 spin_lock_bh(&da->qlock);
 da->ack_rbf.tstamp[da->ack_rbf.t_rb] = ts;

 INCR(da->ack_rbf.t_rb, ATH_DYN_BUF);
 if (da->ack_rbf.t_rb == da->ack_rbf.h_rb)
  INCR(da->ack_rbf.h_rb, ATH_DYN_BUF);

 ath_dbg(common, DYNACK, "rx sample %u [h %u-t %u]\n",
  ts, da->ack_rbf.h_rb, da->ack_rbf.t_rb);

 ath_dynack_compute_to(ah);

 spin_unlock_bh(&da->qlock);
}
