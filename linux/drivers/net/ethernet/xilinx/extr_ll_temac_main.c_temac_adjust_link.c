
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct temac_local {int last_link; int indirect_lock; } ;
struct phy_device {int speed; int duplex; int link; } ;
struct net_device {struct phy_device* phydev; } ;





 int XTE_EMCFG_LINKSPD_10 ;
 int XTE_EMCFG_LINKSPD_100 ;
 int XTE_EMCFG_LINKSPD_1000 ;
 int XTE_EMCFG_LINKSPD_MASK ;
 int XTE_EMCFG_OFFSET ;
 struct temac_local* netdev_priv (struct net_device*) ;
 int phy_print_status (struct phy_device*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int temac_indirect_in32_locked (struct temac_local*,int ) ;
 int temac_indirect_out32_locked (struct temac_local*,int ,int ) ;

__attribute__((used)) static void temac_adjust_link(struct net_device *ndev)
{
 struct temac_local *lp = netdev_priv(ndev);
 struct phy_device *phy = ndev->phydev;
 u32 mii_speed;
 int link_state;
 unsigned long flags;


 link_state = phy->speed | (phy->duplex << 1) | phy->link;

 if (lp->last_link != link_state) {
  spin_lock_irqsave(lp->indirect_lock, flags);
  mii_speed = temac_indirect_in32_locked(lp, XTE_EMCFG_OFFSET);
  mii_speed &= ~XTE_EMCFG_LINKSPD_MASK;

  switch (phy->speed) {
  case 128: mii_speed |= XTE_EMCFG_LINKSPD_1000; break;
  case 129: mii_speed |= XTE_EMCFG_LINKSPD_100; break;
  case 130: mii_speed |= XTE_EMCFG_LINKSPD_10; break;
  }


  temac_indirect_out32_locked(lp, XTE_EMCFG_OFFSET, mii_speed);
  spin_unlock_irqrestore(lp->indirect_lock, flags);

  lp->last_link = link_state;
  phy_print_status(phy);
 }
}
