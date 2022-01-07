
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct phy_device {scalar_t__ link; } ;
struct lan78xx_net {int link_on; int delta; int bh; int stat_monitor; TYPE_3__* net; TYPE_1__* udev; } ;
struct TYPE_5__ {int speed; int duplex; } ;
struct ethtool_link_ksettings {TYPE_2__ base; } ;
struct TYPE_6__ {struct phy_device* phydev; } ;
struct TYPE_4__ {scalar_t__ speed; } ;


 int EIO ;
 int INT_STS ;
 int INT_STS_PHY_INT_ ;
 int MAC_CR ;
 int MAC_CR_RST_ ;
 int MII_ADVERTISE ;
 int MII_LPA ;
 scalar_t__ STAT_UPDATE_TIMER ;
 int USB_CFG1 ;
 int USB_CFG1_DEV_U1_INIT_EN_ ;
 int USB_CFG1_DEV_U2_INIT_EN_ ;
 scalar_t__ USB_SPEED_SUPER ;
 int del_timer (int *) ;
 scalar_t__ jiffies ;
 int lan78xx_read_reg (struct lan78xx_net*,int ,int *) ;
 int lan78xx_update_flowcontrol (struct lan78xx_net*,int ,int,int) ;
 int lan78xx_write_reg (struct lan78xx_net*,int ,int ) ;
 int link ;
 int mod_timer (int *,scalar_t__) ;
 int netif_dbg (struct lan78xx_net*,int ,TYPE_3__*,char*,int,int ,int,int) ;
 int phy_ethtool_ksettings_get (struct phy_device*,struct ethtool_link_ksettings*) ;
 int phy_read (struct phy_device*,int ) ;
 int phy_read_status (struct phy_device*) ;
 int tasklet_schedule (int *) ;
 int timer_pending (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int lan78xx_link_reset(struct lan78xx_net *dev)
{
 struct phy_device *phydev = dev->net->phydev;
 struct ethtool_link_ksettings ecmd;
 int ladv, radv, ret;
 u32 buf;


 ret = lan78xx_write_reg(dev, INT_STS, INT_STS_PHY_INT_);
 if (unlikely(ret < 0))
  return -EIO;

 phy_read_status(phydev);

 if (!phydev->link && dev->link_on) {
  dev->link_on = 0;


  ret = lan78xx_read_reg(dev, MAC_CR, &buf);
  if (unlikely(ret < 0))
   return -EIO;
  buf |= MAC_CR_RST_;
  ret = lan78xx_write_reg(dev, MAC_CR, buf);
  if (unlikely(ret < 0))
   return -EIO;

  del_timer(&dev->stat_monitor);
 } else if (phydev->link && !dev->link_on) {
  dev->link_on = 1;

  phy_ethtool_ksettings_get(phydev, &ecmd);

  if (dev->udev->speed == USB_SPEED_SUPER) {
   if (ecmd.base.speed == 1000) {

    ret = lan78xx_read_reg(dev, USB_CFG1, &buf);
    buf &= ~USB_CFG1_DEV_U2_INIT_EN_;
    ret = lan78xx_write_reg(dev, USB_CFG1, buf);

    ret = lan78xx_read_reg(dev, USB_CFG1, &buf);
    buf |= USB_CFG1_DEV_U1_INIT_EN_;
    ret = lan78xx_write_reg(dev, USB_CFG1, buf);
   } else {

    ret = lan78xx_read_reg(dev, USB_CFG1, &buf);
    buf |= USB_CFG1_DEV_U2_INIT_EN_;
    buf |= USB_CFG1_DEV_U1_INIT_EN_;
    ret = lan78xx_write_reg(dev, USB_CFG1, buf);
   }
  }

  ladv = phy_read(phydev, MII_ADVERTISE);
  if (ladv < 0)
   return ladv;

  radv = phy_read(phydev, MII_LPA);
  if (radv < 0)
   return radv;

  netif_dbg(dev, link, dev->net,
     "speed: %u duplex: %d anadv: 0x%04x anlpa: 0x%04x",
     ecmd.base.speed, ecmd.base.duplex, ladv, radv);

  ret = lan78xx_update_flowcontrol(dev, ecmd.base.duplex, ladv,
       radv);

  if (!timer_pending(&dev->stat_monitor)) {
   dev->delta = 1;
   mod_timer(&dev->stat_monitor,
      jiffies + STAT_UPDATE_TIMER);
  }

  tasklet_schedule(&dev->bh);
 }

 return ret;
}
