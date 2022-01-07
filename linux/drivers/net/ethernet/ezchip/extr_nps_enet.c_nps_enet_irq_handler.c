
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nps_enet_priv {int napi; } ;
struct net_device {int dummy; } ;
typedef int s32 ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int NPS_ENET_REG_BUF_INT_ENABLE ;
 int NPS_ENET_REG_RX_CTL ;
 int RX_CTL_CR_MASK ;
 int RX_CTL_CR_SHIFT ;
 int __napi_schedule (int *) ;
 scalar_t__ likely (int ) ;
 int napi_schedule_prep (int *) ;
 struct nps_enet_priv* netdev_priv (struct net_device*) ;
 scalar_t__ nps_enet_is_tx_pending (struct nps_enet_priv*) ;
 int nps_enet_reg_get (struct nps_enet_priv*,int ) ;
 int nps_enet_reg_set (struct nps_enet_priv*,int ,int ) ;

__attribute__((used)) static irqreturn_t nps_enet_irq_handler(s32 irq, void *dev_instance)
{
 struct net_device *ndev = dev_instance;
 struct nps_enet_priv *priv = netdev_priv(ndev);
 u32 rx_ctrl_value = nps_enet_reg_get(priv, NPS_ENET_REG_RX_CTL);
 u32 rx_ctrl_cr = (rx_ctrl_value & RX_CTL_CR_MASK) >> RX_CTL_CR_SHIFT;

 if (nps_enet_is_tx_pending(priv) || rx_ctrl_cr)
  if (likely(napi_schedule_prep(&priv->napi))) {
   nps_enet_reg_set(priv, NPS_ENET_REG_BUF_INT_ENABLE, 0);
   __napi_schedule(&priv->napi);
  }

 return IRQ_HANDLED;
}
