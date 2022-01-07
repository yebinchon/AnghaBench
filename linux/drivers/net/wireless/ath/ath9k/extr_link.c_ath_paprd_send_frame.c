
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int txctl ;
struct sk_buff {int dummy; } ;
struct TYPE_10__ {TYPE_4__* rates; } ;
struct ieee80211_tx_info {int paprd; TYPE_5__ control; int flags; int band; int txq; } ;
struct ieee80211_hw {int dummy; } ;
struct ath_tx_control {int paprd; TYPE_5__ control; int flags; int band; int txq; } ;
struct TYPE_8__ {TYPE_2__* chan; } ;
struct TYPE_6__ {int * txq_map; } ;
struct ath_softc {int paprd_complete; TYPE_3__ cur_chandef; TYPE_1__ tx; struct ath_hw* sc_ah; struct ieee80211_hw* hw; } ;
struct ath_hw {int dummy; } ;
struct ath_common {int dummy; } ;
struct TYPE_9__ {int idx; int count; int flags; } ;
struct TYPE_7__ {int band; } ;


 int ATH_PAPRD_TIMEOUT ;
 int BIT (int) ;
 int CALIBRATE ;
 size_t IEEE80211_AC_BE ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_CTL_NO_ACK ;
 int IEEE80211_TX_RC_MCS ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath_dbg (struct ath_common*,int ,char*,...) ;
 scalar_t__ ath_tx_start (struct ieee80211_hw*,struct sk_buff*,struct ieee80211_tx_info*) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int init_completion (int *) ;
 int memset (struct ieee80211_tx_info*,int ,int) ;
 int msecs_to_jiffies (int ) ;
 unsigned long wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static bool ath_paprd_send_frame(struct ath_softc *sc, struct sk_buff *skb, int chain)
{
 struct ieee80211_hw *hw = sc->hw;
 struct ieee80211_tx_info *tx_info = IEEE80211_SKB_CB(skb);
 struct ath_hw *ah = sc->sc_ah;
 struct ath_common *common = ath9k_hw_common(ah);
 struct ath_tx_control txctl;
 unsigned long time_left;

 memset(&txctl, 0, sizeof(txctl));
 txctl.txq = sc->tx.txq_map[IEEE80211_AC_BE];

 memset(tx_info, 0, sizeof(*tx_info));
 tx_info->band = sc->cur_chandef.chan->band;
 tx_info->flags |= IEEE80211_TX_CTL_NO_ACK;
 tx_info->control.rates[0].idx = 0;
 tx_info->control.rates[0].count = 1;
 tx_info->control.rates[0].flags = IEEE80211_TX_RC_MCS;
 tx_info->control.rates[1].idx = -1;

 init_completion(&sc->paprd_complete);
 txctl.paprd = BIT(chain);

 if (ath_tx_start(hw, skb, &txctl) != 0) {
  ath_dbg(common, CALIBRATE, "PAPRD TX failed\n");
  dev_kfree_skb_any(skb);
  return 0;
 }

 time_left = wait_for_completion_timeout(&sc->paprd_complete,
   msecs_to_jiffies(ATH_PAPRD_TIMEOUT));

 if (!time_left)
  ath_dbg(common, CALIBRATE,
   "Timeout waiting for paprd training on TX chain %d\n",
   chain);

 return !!time_left;
}
