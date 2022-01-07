
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usbnet {int dummy; } ;
struct net_device {int dummy; } ;
typedef int __le16 ;


 int BMSR_LSTATUS ;
 int MII_BMSR ;
 int NSR_LINKST ;
 int SR_NSR ;
 int le16_to_cpu (int) ;
 int netdev_dbg (struct net_device*,char*,...) ;
 struct usbnet* netdev_priv (struct net_device*) ;
 int sr_read_reg (struct usbnet*,int ,int*) ;
 int sr_share_read_word (struct usbnet*,int,int,int*) ;

__attribute__((used)) static int sr_mdio_read(struct net_device *netdev, int phy_id, int loc)
{
 struct usbnet *dev = netdev_priv(netdev);
 __le16 res;
 int rc = 0;

 if (phy_id) {
  netdev_dbg(netdev, "Only internal phy supported\n");
  return 0;
 }


 if (loc == MII_BMSR) {
  u8 value;

  sr_read_reg(dev, SR_NSR, &value);
  if (value & NSR_LINKST)
   rc = 1;
 }
 sr_share_read_word(dev, 1, loc, &res);
 if (rc == 1)
  res = le16_to_cpu(res) | BMSR_LSTATUS;
 else
  res = le16_to_cpu(res) & ~BMSR_LSTATUS;

 netdev_dbg(netdev, "sr_mdio_read() phy_id=0x%02x, loc=0x%02x, returns=0x%04x\n",
     phy_id, loc, res);

 return res;
}
