
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int features; } ;
struct cp_private {int lock; int cpcmd; } ;
typedef int netdev_features_t ;


 int CpCmd ;
 int NETIF_F_HW_VLAN_CTAG_RX ;
 int NETIF_F_RXCSUM ;
 int RxChkSum ;
 int RxVlanOn ;
 int cpw16_f (int ,int ) ;
 struct cp_private* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int cp_set_features(struct net_device *dev, netdev_features_t features)
{
 struct cp_private *cp = netdev_priv(dev);
 unsigned long flags;

 if (!((dev->features ^ features) & NETIF_F_RXCSUM))
  return 0;

 spin_lock_irqsave(&cp->lock, flags);

 if (features & NETIF_F_RXCSUM)
  cp->cpcmd |= RxChkSum;
 else
  cp->cpcmd &= ~RxChkSum;

 if (features & NETIF_F_HW_VLAN_CTAG_RX)
  cp->cpcmd |= RxVlanOn;
 else
  cp->cpcmd &= ~RxVlanOn;

 cpw16_f(CpCmd, cp->cpcmd);
 spin_unlock_irqrestore(&cp->lock, flags);

 return 0;
}
