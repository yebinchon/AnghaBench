
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct net_device {int * dev_addr; } ;
struct ltq_etop_priv {int lock; } ;


 int LTQ_ETOP_MAC_DA0 ;
 int LTQ_ETOP_MAC_DA1 ;
 int eth_mac_addr (struct net_device*,void*) ;
 int ltq_etop_w32 (int,int ) ;
 struct ltq_etop_priv* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
ltq_etop_set_mac_address(struct net_device *dev, void *p)
{
 int ret = eth_mac_addr(dev, p);

 if (!ret) {
  struct ltq_etop_priv *priv = netdev_priv(dev);
  unsigned long flags;


  spin_lock_irqsave(&priv->lock, flags);
  ltq_etop_w32(*((u32 *)dev->dev_addr), LTQ_ETOP_MAC_DA0);
  ltq_etop_w32(*((u16 *)&dev->dev_addr[4]) << 16,
   LTQ_ETOP_MAC_DA1);
  spin_unlock_irqrestore(&priv->lock, flags);
 }
 return ret;
}
