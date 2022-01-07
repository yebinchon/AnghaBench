
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usbnet {int net; } ;
typedef int __le16 ;


 int AX_CMD_READ_PHY_ID ;
 int asix_read_cmd (struct usbnet*,int ,int ,int ,int,int*,int ) ;
 int netdev_dbg (int ,char*,...) ;
 int netdev_err (int ,char*,int) ;

int asix_read_phy_addr(struct usbnet *dev, int internal)
{
 int offset = (internal ? 1 : 0);
 u8 buf[2];
 int ret = asix_read_cmd(dev, AX_CMD_READ_PHY_ID, 0, 0, 2, buf, 0);

 netdev_dbg(dev->net, "asix_get_phy_addr()\n");

 if (ret < 0) {
  netdev_err(dev->net, "Error reading PHYID register: %02x\n", ret);
  goto out;
 }
 netdev_dbg(dev->net, "asix_get_phy_addr() returning 0x%04x\n",
     *((__le16 *)buf));
 ret = buf[offset];

out:
 return ret;
}
