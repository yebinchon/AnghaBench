
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; } ;
struct efx_ptp_data {int work; int workwq; int txq; } ;
struct efx_nic {struct efx_ptp_data* ptp_data; } ;
struct TYPE_2__ {scalar_t__ dest; } ;


 scalar_t__ MC_CMD_PTP_IN_TRANSMIT_PACKET_MAXNUM ;
 int NETDEV_TX_OK ;
 int PTP_EVENT_PORT ;
 int efx_xmit_hwtstamp_pending (struct sk_buff*) ;
 scalar_t__ htons (int ) ;
 int queue_work (int ,int *) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 TYPE_1__* udp_hdr (struct sk_buff*) ;

int efx_ptp_tx(struct efx_nic *efx, struct sk_buff *skb)
{
 struct efx_ptp_data *ptp = efx->ptp_data;

 skb_queue_tail(&ptp->txq, skb);

 if ((udp_hdr(skb)->dest == htons(PTP_EVENT_PORT)) &&
     (skb->len <= MC_CMD_PTP_IN_TRANSMIT_PACKET_MAXNUM))
  efx_xmit_hwtstamp_pending(skb);
 queue_work(ptp->workwq, &ptp->work);

 return NETDEV_TX_OK;
}
