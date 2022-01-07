
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct stmmac_priv {TYPE_2__* plat; int hw; } ;
struct TYPE_4__ {size_t tx_queues_to_use; TYPE_1__* tx_queues_cfg; } ;
struct TYPE_3__ {size_t mode_to_use; int low_credit; int high_credit; int idle_slope; int send_slope; } ;


 size_t MTL_QUEUE_DCB ;
 int stmmac_config_cbs (struct stmmac_priv*,int ,int ,int ,int ,int ,size_t) ;

__attribute__((used)) static void stmmac_configure_cbs(struct stmmac_priv *priv)
{
 u32 tx_queues_count = priv->plat->tx_queues_to_use;
 u32 mode_to_use;
 u32 queue;


 for (queue = 1; queue < tx_queues_count; queue++) {
  mode_to_use = priv->plat->tx_queues_cfg[queue].mode_to_use;
  if (mode_to_use == MTL_QUEUE_DCB)
   continue;

  stmmac_config_cbs(priv, priv->hw,
    priv->plat->tx_queues_cfg[queue].send_slope,
    priv->plat->tx_queues_cfg[queue].idle_slope,
    priv->plat->tx_queues_cfg[queue].high_credit,
    priv->plat->tx_queues_cfg[queue].low_credit,
    queue);
 }
}
