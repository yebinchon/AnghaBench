
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct can_rx_offload {int skb_queue; int napi; } ;


 int netif_napi_del (int *) ;
 int skb_queue_purge (int *) ;

void can_rx_offload_del(struct can_rx_offload *offload)
{
 netif_napi_del(&offload->napi);
 skb_queue_purge(&offload->skb_queue);
}
