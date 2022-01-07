
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct smsc9420_pdata {scalar_t__ last_duplex; int last_carrier; int dev; } ;
struct phy_device {scalar_t__ duplex; } ;
struct net_device {struct phy_device* phydev; } ;


 int MAC_CR ;
 int MAC_CR_FDPX_ ;
 int link ;
 struct smsc9420_pdata* netdev_priv (struct net_device*) ;
 int netif_carrier_ok (struct net_device*) ;
 int netif_dbg (struct smsc9420_pdata*,int ,int ,char*) ;
 int smsc9420_phy_update_flowcontrol (struct smsc9420_pdata*) ;
 int smsc9420_reg_read (struct smsc9420_pdata*,int ) ;
 int smsc9420_reg_write (struct smsc9420_pdata*,int ,int ) ;

__attribute__((used)) static void smsc9420_phy_adjust_link(struct net_device *dev)
{
 struct smsc9420_pdata *pd = netdev_priv(dev);
 struct phy_device *phy_dev = dev->phydev;
 int carrier;

 if (phy_dev->duplex != pd->last_duplex) {
  u32 mac_cr = smsc9420_reg_read(pd, MAC_CR);
  if (phy_dev->duplex) {
   netif_dbg(pd, link, pd->dev, "full duplex mode\n");
   mac_cr |= MAC_CR_FDPX_;
  } else {
   netif_dbg(pd, link, pd->dev, "half duplex mode\n");
   mac_cr &= ~MAC_CR_FDPX_;
  }
  smsc9420_reg_write(pd, MAC_CR, mac_cr);

  smsc9420_phy_update_flowcontrol(pd);
  pd->last_duplex = phy_dev->duplex;
 }

 carrier = netif_carrier_ok(dev);
 if (carrier != pd->last_carrier) {
  if (carrier)
   netif_dbg(pd, link, pd->dev, "carrier OK\n");
  else
   netif_dbg(pd, link, pd->dev, "no carrier\n");
  pd->last_carrier = carrier;
 }
}
