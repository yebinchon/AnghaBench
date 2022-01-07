
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ ip_summed; } ;
struct net_device {int dummy; } ;
struct ef4_tx_queue {int dummy; } ;
struct ef4_nic {unsigned int n_tx_channels; } ;
typedef int netdev_tx_t ;


 scalar_t__ CHECKSUM_PARTIAL ;
 unsigned int EF4_TXQ_TYPE_HIGHPRI ;
 unsigned int EF4_TXQ_TYPE_OFFLOAD ;
 int EF4_WARN_ON_PARANOID (int) ;
 int ef4_enqueue_skb (struct ef4_tx_queue*,struct sk_buff*) ;
 struct ef4_tx_queue* ef4_get_tx_queue (struct ef4_nic*,unsigned int,unsigned int) ;
 struct ef4_nic* netdev_priv (struct net_device*) ;
 int netif_device_present (struct net_device*) ;
 unsigned int skb_get_queue_mapping (struct sk_buff*) ;

netdev_tx_t ef4_hard_start_xmit(struct sk_buff *skb,
    struct net_device *net_dev)
{
 struct ef4_nic *efx = netdev_priv(net_dev);
 struct ef4_tx_queue *tx_queue;
 unsigned index, type;

 EF4_WARN_ON_PARANOID(!netif_device_present(net_dev));

 index = skb_get_queue_mapping(skb);
 type = skb->ip_summed == CHECKSUM_PARTIAL ? EF4_TXQ_TYPE_OFFLOAD : 0;
 if (index >= efx->n_tx_channels) {
  index -= efx->n_tx_channels;
  type |= EF4_TXQ_TYPE_HIGHPRI;
 }
 tx_queue = ef4_get_tx_queue(efx, index, type);

 return ef4_enqueue_skb(tx_queue, skb);
}
