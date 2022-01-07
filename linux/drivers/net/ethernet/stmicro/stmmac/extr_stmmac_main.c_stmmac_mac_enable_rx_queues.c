
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct stmmac_priv {int hw; TYPE_2__* plat; } ;
struct TYPE_4__ {int rx_queues_to_use; TYPE_1__* rx_queues_cfg; } ;
struct TYPE_3__ {int mode_to_use; } ;


 int stmmac_rx_queue_enable (struct stmmac_priv*,int ,int ,int) ;

__attribute__((used)) static void stmmac_mac_enable_rx_queues(struct stmmac_priv *priv)
{
 u32 rx_queues_count = priv->plat->rx_queues_to_use;
 int queue;
 u8 mode;

 for (queue = 0; queue < rx_queues_count; queue++) {
  mode = priv->plat->rx_queues_cfg[queue].mode_to_use;
  stmmac_rx_queue_enable(priv, priv->hw, mode, queue);
 }
}
