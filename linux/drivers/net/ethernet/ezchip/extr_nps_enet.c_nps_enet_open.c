
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nps_enet_priv {int ge_mac_cfg_3_value; int napi; int irq; scalar_t__ ge_mac_cfg_2_value; int * tx_skb; } ;
struct net_device {int dummy; } ;
typedef scalar_t__ s32 ;


 int CFG_3_MAX_LEN_SHIFT ;
 int CFG_3_RX_IFG_TH_SHIFT ;
 int NPS_ENET_GE_MAC_CFG_3_MAX_LEN ;
 int NPS_ENET_GE_MAC_CFG_3_RX_IFG_TH ;
 int napi_enable (int *) ;
 struct nps_enet_priv* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int nps_enet_hw_disable_control (struct net_device*) ;
 int nps_enet_hw_enable_control (struct net_device*) ;
 int nps_enet_hw_reset (struct net_device*) ;
 int nps_enet_irq_handler ;
 scalar_t__ request_irq (int ,int ,int ,char*,struct net_device*) ;

__attribute__((used)) static s32 nps_enet_open(struct net_device *ndev)
{
 struct nps_enet_priv *priv = netdev_priv(ndev);
 s32 err;


 priv->tx_skb = ((void*)0);
 priv->ge_mac_cfg_2_value = 0;
 priv->ge_mac_cfg_3_value = 0;


 priv->ge_mac_cfg_3_value |=
   NPS_ENET_GE_MAC_CFG_3_RX_IFG_TH << CFG_3_RX_IFG_TH_SHIFT;

 priv->ge_mac_cfg_3_value |=
   NPS_ENET_GE_MAC_CFG_3_MAX_LEN << CFG_3_MAX_LEN_SHIFT;


 nps_enet_hw_disable_control(ndev);


 err = request_irq(priv->irq, nps_enet_irq_handler,
     0, "enet-rx-tx", ndev);
 if (err)
  return err;

 napi_enable(&priv->napi);


 nps_enet_hw_reset(ndev);
 nps_enet_hw_enable_control(ndev);

 netif_start_queue(ndev);

 return 0;
}
