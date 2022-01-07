
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct smsc911x_data {int mac_lock; struct net_device* dev; } ;
struct phy_device {scalar_t__ duplex; } ;
struct net_device {struct phy_device* phydev; } ;


 int AFC_CFG ;
 scalar_t__ DUPLEX_FULL ;
 int FLOW ;
 int FLOW_CTRL_RX ;
 int FLOW_CTRL_TX ;
 int MII_ADVERTISE ;
 int MII_LPA ;
 int SMSC_TRACE (struct smsc911x_data*,int ,char*,...) ;
 int hw ;
 int mii_resolve_flowctrl_fdx (int ,int ) ;
 int phy_read (struct phy_device*,int ) ;
 int smsc911x_mac_write (struct smsc911x_data*,int ,int) ;
 int smsc911x_reg_read (struct smsc911x_data*,int ) ;
 int smsc911x_reg_write (struct smsc911x_data*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void smsc911x_phy_update_flowcontrol(struct smsc911x_data *pdata)
{
 struct net_device *ndev = pdata->dev;
 struct phy_device *phy_dev = ndev->phydev;
 u32 afc = smsc911x_reg_read(pdata, AFC_CFG);
 u32 flow;
 unsigned long flags;

 if (phy_dev->duplex == DUPLEX_FULL) {
  u16 lcladv = phy_read(phy_dev, MII_ADVERTISE);
  u16 rmtadv = phy_read(phy_dev, MII_LPA);
  u8 cap = mii_resolve_flowctrl_fdx(lcladv, rmtadv);

  if (cap & FLOW_CTRL_RX)
   flow = 0xFFFF0002;
  else
   flow = 0;

  if (cap & FLOW_CTRL_TX)
   afc |= 0xF;
  else
   afc &= ~0xF;

  SMSC_TRACE(pdata, hw, "rx pause %s, tx pause %s",
      (cap & FLOW_CTRL_RX ? "enabled" : "disabled"),
      (cap & FLOW_CTRL_TX ? "enabled" : "disabled"));
 } else {
  SMSC_TRACE(pdata, hw, "half duplex");
  flow = 0;
  afc |= 0xF;
 }

 spin_lock_irqsave(&pdata->mac_lock, flags);
 smsc911x_mac_write(pdata, FLOW, flow);
 spin_unlock_irqrestore(&pdata->mac_lock, flags);

 smsc911x_reg_write(pdata, AFC_CFG, afc);
}
