
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xgbe_prv_data {int tstamp_lock; int tx_tstamp_skb; } ;
struct xgbe_packet_data {int attributes; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int tx_flags; } ;


 int PTP ;
 int SKBTX_IN_PROGRESS ;
 int TX_PACKET_ATTRIBUTES ;
 scalar_t__ XGMAC_GET_BITS (int ,int ,int ) ;
 int XGMAC_SET_BITS (int ,int ,int ,int ) ;
 int skb_get (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 int skb_tx_timestamp (struct sk_buff*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void xgbe_prep_tx_tstamp(struct xgbe_prv_data *pdata,
    struct sk_buff *skb,
    struct xgbe_packet_data *packet)
{
 unsigned long flags;

 if (XGMAC_GET_BITS(packet->attributes, TX_PACKET_ATTRIBUTES, PTP)) {
  spin_lock_irqsave(&pdata->tstamp_lock, flags);
  if (pdata->tx_tstamp_skb) {

   XGMAC_SET_BITS(packet->attributes,
           TX_PACKET_ATTRIBUTES, PTP, 0);
  } else {
   pdata->tx_tstamp_skb = skb_get(skb);
   skb_shinfo(skb)->tx_flags |= SKBTX_IN_PROGRESS;
  }
  spin_unlock_irqrestore(&pdata->tstamp_lock, flags);
 }

 skb_tx_timestamp(skb);
}
