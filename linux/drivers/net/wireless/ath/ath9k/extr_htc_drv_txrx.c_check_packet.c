
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ath_common {int dummy; } ;
struct ath9k_htc_tx_ctl {scalar_t__ timestamp; } ;
struct ath9k_htc_priv {int ah; } ;


 int ATH9K_HTC_TX_TIMEOUT_INTERVAL ;
 struct ath9k_htc_tx_ctl* HTC_SKB_CB (struct sk_buff*) ;
 int XMIT ;
 struct ath_common* ath9k_hw_common (int ) ;
 int ath_dbg (struct ath_common*,int ,char*) ;
 int jiffies ;
 scalar_t__ msecs_to_jiffies (int ) ;
 scalar_t__ time_after (int ,scalar_t__) ;

__attribute__((used)) static inline bool check_packet(struct ath9k_htc_priv *priv, struct sk_buff *skb)
{
 struct ath_common *common = ath9k_hw_common(priv->ah);
 struct ath9k_htc_tx_ctl *tx_ctl;

 tx_ctl = HTC_SKB_CB(skb);

 if (time_after(jiffies,
         tx_ctl->timestamp +
         msecs_to_jiffies(ATH9K_HTC_TX_TIMEOUT_INTERVAL))) {
  ath_dbg(common, XMIT, "Dropping a packet due to TX timeout\n");
  return 1;
 }

 return 0;
}
