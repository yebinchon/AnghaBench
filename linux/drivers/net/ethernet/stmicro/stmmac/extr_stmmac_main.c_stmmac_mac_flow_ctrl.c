
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct stmmac_priv {int pause; int flow_ctrl; int hw; TYPE_1__* plat; } ;
struct TYPE_2__ {int tx_queues_to_use; } ;


 int stmmac_flow_ctrl (struct stmmac_priv*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void stmmac_mac_flow_ctrl(struct stmmac_priv *priv, u32 duplex)
{
 u32 tx_cnt = priv->plat->tx_queues_to_use;

 stmmac_flow_ctrl(priv, priv->hw, duplex, priv->flow_ctrl,
   priv->pause, tx_cnt);
}
