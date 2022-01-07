
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct temac_local {int indirect_lock; } ;
struct net_device {int* dev_addr; } ;


 int XTE_UAW0_OFFSET ;
 int XTE_UAW1_OFFSET ;
 struct temac_local* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int temac_indirect_out32_locked (struct temac_local*,int ,int) ;

__attribute__((used)) static void temac_do_set_mac_address(struct net_device *ndev)
{
 struct temac_local *lp = netdev_priv(ndev);
 unsigned long flags;


 spin_lock_irqsave(lp->indirect_lock, flags);
 temac_indirect_out32_locked(lp, XTE_UAW0_OFFSET,
        (ndev->dev_addr[0]) |
        (ndev->dev_addr[1] << 8) |
        (ndev->dev_addr[2] << 16) |
        (ndev->dev_addr[3] << 24));


 temac_indirect_out32_locked(lp, XTE_UAW1_OFFSET,
        (ndev->dev_addr[4] & 0x000000ff) |
        (ndev->dev_addr[5] << 8));
 spin_unlock_irqrestore(lp->indirect_lock, flags);
}
