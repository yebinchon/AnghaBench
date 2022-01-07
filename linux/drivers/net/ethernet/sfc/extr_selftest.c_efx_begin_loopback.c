
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct efx_tx_queue {int queue; struct efx_nic* efx; } ;
struct efx_nic {int net_dev; struct efx_loopback_state* loopback_selftest; } ;
struct efx_loopback_state {int packet_count; int payload; struct sk_buff** skbs; } ;
struct TYPE_2__ {int saddr; } ;
struct efx_loopback_payload {TYPE_1__ ip; } ;
typedef int netdev_tx_t ;


 int ENOMEM ;
 int EPIPE ;
 int GFP_KERNEL ;
 int INADDR_LOOPBACK ;
 int LOOPBACK_MODE (struct efx_nic*) ;
 int NETDEV_TX_OK ;
 struct sk_buff* alloc_skb (int,int ) ;
 int drv ;
 int efx_enqueue_skb (struct efx_tx_queue*,struct sk_buff*) ;
 int htonl (int) ;
 int kfree_skb (struct sk_buff*) ;
 int memcpy (struct efx_loopback_payload*,int *,int) ;
 int netif_err (struct efx_nic*,int ,int ,char*,int ,int,int,int ) ;
 int netif_tx_lock_bh (int ) ;
 int netif_tx_unlock_bh (int ) ;
 int skb_get (struct sk_buff*) ;
 struct efx_loopback_payload* skb_put (struct sk_buff*,int) ;
 int smp_wmb () ;

__attribute__((used)) static int efx_begin_loopback(struct efx_tx_queue *tx_queue)
{
 struct efx_nic *efx = tx_queue->efx;
 struct efx_loopback_state *state = efx->loopback_selftest;
 struct efx_loopback_payload *payload;
 struct sk_buff *skb;
 int i;
 netdev_tx_t rc;


 for (i = 0; i < state->packet_count; i++) {


  skb = alloc_skb(sizeof(state->payload), GFP_KERNEL);
  if (!skb)
   return -ENOMEM;
  state->skbs[i] = skb;
  skb_get(skb);



  payload = skb_put(skb, sizeof(state->payload));
  memcpy(payload, &state->payload, sizeof(state->payload));
  payload->ip.saddr = htonl(INADDR_LOOPBACK | (i << 2));



  smp_wmb();

  netif_tx_lock_bh(efx->net_dev);
  rc = efx_enqueue_skb(tx_queue, skb);
  netif_tx_unlock_bh(efx->net_dev);

  if (rc != NETDEV_TX_OK) {
   netif_err(efx, drv, efx->net_dev,
      "TX queue %d could not transmit packet %d of "
      "%d in %s loopback test\n", tx_queue->queue,
      i + 1, state->packet_count,
      LOOPBACK_MODE(efx));


   kfree_skb(skb);
   return -EPIPE;
  }
 }

 return 0;
}
