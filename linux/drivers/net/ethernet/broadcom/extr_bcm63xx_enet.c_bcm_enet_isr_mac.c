
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct bcm_enet_priv {int mib_update_task; } ;
typedef int irqreturn_t ;


 int ENET_IRMASK_REG ;
 int ENET_IR_MIB ;
 int ENET_IR_REG ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int enet_readl (struct bcm_enet_priv*,int ) ;
 int enet_writel (struct bcm_enet_priv*,int,int ) ;
 struct bcm_enet_priv* netdev_priv (struct net_device*) ;
 int schedule_work (int *) ;

__attribute__((used)) static irqreturn_t bcm_enet_isr_mac(int irq, void *dev_id)
{
 struct net_device *dev;
 struct bcm_enet_priv *priv;
 u32 stat;

 dev = dev_id;
 priv = netdev_priv(dev);

 stat = enet_readl(priv, ENET_IR_REG);
 if (!(stat & ENET_IR_MIB))
  return IRQ_NONE;


 enet_writel(priv, ENET_IR_MIB, ENET_IR_REG);
 enet_writel(priv, 0, ENET_IRMASK_REG);


 schedule_work(&priv->mib_update_task);

 return IRQ_HANDLED;
}
