
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct net_device {int dev_addr; } ;
struct bnad {int bna_lock; } ;


 int bnad_mac_addr_set_locked (struct bnad*,int ) ;
 int ether_addr_copy (int ,int ) ;
 struct bnad* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
bnad_set_mac_address(struct net_device *netdev, void *addr)
{
 int err;
 struct bnad *bnad = netdev_priv(netdev);
 struct sockaddr *sa = (struct sockaddr *)addr;
 unsigned long flags;

 spin_lock_irqsave(&bnad->bna_lock, flags);

 err = bnad_mac_addr_set_locked(bnad, sa->sa_data);
 if (!err)
  ether_addr_copy(netdev->dev_addr, sa->sa_data);

 spin_unlock_irqrestore(&bnad->bna_lock, flags);

 return err;
}
