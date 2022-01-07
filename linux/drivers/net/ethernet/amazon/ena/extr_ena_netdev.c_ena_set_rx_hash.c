
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct ena_ring {TYPE_1__* netdev; } ;
struct ena_com_rx_ctx {scalar_t__ l4_proto; int hash; scalar_t__ frag; } ;
typedef enum pkt_hash_types { ____Placeholder_pkt_hash_types } pkt_hash_types ;
struct TYPE_2__ {int features; } ;


 scalar_t__ ENA_ETH_IO_L4_PROTO_TCP ;
 scalar_t__ ENA_ETH_IO_L4_PROTO_UDP ;
 int NETIF_F_RXHASH ;
 int PKT_HASH_TYPE_L4 ;
 int PKT_HASH_TYPE_NONE ;
 scalar_t__ likely (int) ;
 int skb_set_hash (struct sk_buff*,int ,int) ;

__attribute__((used)) static void ena_set_rx_hash(struct ena_ring *rx_ring,
       struct ena_com_rx_ctx *ena_rx_ctx,
       struct sk_buff *skb)
{
 enum pkt_hash_types hash_type;

 if (likely(rx_ring->netdev->features & NETIF_F_RXHASH)) {
  if (likely((ena_rx_ctx->l4_proto == ENA_ETH_IO_L4_PROTO_TCP) ||
      (ena_rx_ctx->l4_proto == ENA_ETH_IO_L4_PROTO_UDP)))

   hash_type = PKT_HASH_TYPE_L4;
  else
   hash_type = PKT_HASH_TYPE_NONE;


  if (ena_rx_ctx->frag)
   hash_type = PKT_HASH_TYPE_NONE;

  skb_set_hash(skb, ena_rx_ctx->hash, hash_type);
 }
}
