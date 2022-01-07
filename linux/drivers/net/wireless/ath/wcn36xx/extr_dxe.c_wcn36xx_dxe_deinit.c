
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcn36xx {int dxe_rx_h_ch; int dxe_rx_l_ch; int * tx_ack_skb; int hw; int rx_irq; int tx_irq; } ;


 int free_irq (int ,struct wcn36xx*) ;
 int ieee80211_tx_status_irqsafe (int ,int *) ;
 int wcn36xx_dxe_ch_free_skbs (struct wcn36xx*,int *) ;

void wcn36xx_dxe_deinit(struct wcn36xx *wcn)
{
 free_irq(wcn->tx_irq, wcn);
 free_irq(wcn->rx_irq, wcn);

 if (wcn->tx_ack_skb) {
  ieee80211_tx_status_irqsafe(wcn->hw, wcn->tx_ack_skb);
  wcn->tx_ack_skb = ((void*)0);
 }

 wcn36xx_dxe_ch_free_skbs(wcn, &wcn->dxe_rx_l_ch);
 wcn36xx_dxe_ch_free_skbs(wcn, &wcn->dxe_rx_h_ch);
}
