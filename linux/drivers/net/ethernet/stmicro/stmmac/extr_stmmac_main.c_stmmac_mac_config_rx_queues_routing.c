
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
struct stmmac_priv {int hw; TYPE_1__* plat; } ;
struct TYPE_4__ {int pkt_route; } ;
struct TYPE_3__ {size_t rx_queues_to_use; TYPE_2__* rx_queues_cfg; } ;


 int stmmac_rx_queue_routing (struct stmmac_priv*,int ,int,size_t) ;

__attribute__((used)) static void stmmac_mac_config_rx_queues_routing(struct stmmac_priv *priv)
{
 u32 rx_queues_count = priv->plat->rx_queues_to_use;
 u32 queue;
 u8 packet;

 for (queue = 0; queue < rx_queues_count; queue++) {

  if (priv->plat->rx_queues_cfg[queue].pkt_route == 0x0)
   continue;

  packet = priv->plat->rx_queues_cfg[queue].pkt_route;
  stmmac_rx_queue_routing(priv, priv->hw, packet, queue);
 }
}
