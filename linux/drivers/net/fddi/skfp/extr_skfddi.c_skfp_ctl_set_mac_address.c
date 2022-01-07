
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {int sa_data; } ;
struct TYPE_2__ {int DriverLock; } ;
struct s_smc {TYPE_1__ os; } ;
struct net_device {int dev_addr; } ;
typedef TYPE_1__ skfddi_priv ;


 int FDDI_K_ALEN ;
 int ResetAdapter (struct s_smc*) ;
 int memcpy (int ,int ,int ) ;
 struct s_smc* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int skfp_ctl_set_mac_address(struct net_device *dev, void *addr)
{
 struct s_smc *smc = netdev_priv(dev);
 struct sockaddr *p_sockaddr = (struct sockaddr *) addr;
 skfddi_priv *bp = &smc->os;
 unsigned long Flags;


 memcpy(dev->dev_addr, p_sockaddr->sa_data, FDDI_K_ALEN);
 spin_lock_irqsave(&bp->DriverLock, Flags);
 ResetAdapter(smc);
 spin_unlock_irqrestore(&bp->DriverLock, Flags);

 return 0;
}
