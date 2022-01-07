
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct net_device {int * dev_addr; int addr_len; } ;
struct amd8111e_priv {int lock; scalar_t__ mmio; } ;


 int ETH_ALEN ;
 scalar_t__ PADR ;
 int memcpy (int *,int ,int ) ;
 struct amd8111e_priv* netdev_priv (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static int amd8111e_set_mac_address(struct net_device *dev, void *p)
{
 struct amd8111e_priv *lp = netdev_priv(dev);
 int i;
 struct sockaddr *addr = p;

 memcpy(dev->dev_addr, addr->sa_data, dev->addr_len);
 spin_lock_irq(&lp->lock);

 for (i = 0; i < ETH_ALEN; i++)
  writeb( dev->dev_addr[i], lp->mmio + PADR + i );

 spin_unlock_irq(&lp->lock);

 return 0;
}
