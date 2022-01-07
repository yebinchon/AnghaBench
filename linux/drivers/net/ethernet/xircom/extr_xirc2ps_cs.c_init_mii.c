
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {unsigned int base_addr; int if_port; } ;
struct local_info {int new_mii; scalar_t__ probe_port; } ;


 int GetByte (int ) ;
 int MediaSelect ;
 int SelectPage (int ) ;
 int XIRCREG_ESR ;
 int if_port ;
 int mii_rd (unsigned int,int ,int) ;
 int mii_wr (unsigned int,int ,int ,unsigned int,int) ;
 int msleep (int) ;
 int netdev_info (struct net_device*,char*,...) ;
 int netdev_notice (struct net_device*,char*) ;
 struct local_info* netdev_priv (struct net_device*) ;
 int udelay (int) ;

__attribute__((used)) static int
init_mii(struct net_device *dev)
{
    struct local_info *local = netdev_priv(dev);
    unsigned int ioaddr = dev->base_addr;
    unsigned control, status, linkpartner;
    int i;

    if (if_port == 4 || if_port == 1) {
 dev->if_port = if_port;
 local->probe_port = 0;
 return 1;
    }

    status = mii_rd(ioaddr, 0, 1);
    if ((status & 0xff00) != 0x7800)
 return 0;

    local->new_mii = (mii_rd(ioaddr, 0, 2) != 0xffff);

    if (local->probe_port)
 control = 0x1000;
    else if (dev->if_port == 4)
 control = 0x2000;
    else
 control = 0x0000;
    mii_wr(ioaddr, 0, 0, control, 16);
    udelay(100);
    control = mii_rd(ioaddr, 0, 0);

    if (control & 0x0400) {
 netdev_notice(dev, "can't take PHY out of isolation mode\n");
 local->probe_port = 0;
 return 0;
    }

    if (local->probe_port) {




 for (i=0; i < 35; i++) {
     msleep(100);
     status = mii_rd(ioaddr, 0, 1);
     if ((status & 0x0020) && (status & 0x0004))
  break;
 }

 if (!(status & 0x0020)) {
     netdev_info(dev, "autonegotiation failed; using 10mbs\n");
     if (!local->new_mii) {
  control = 0x0000;
  mii_wr(ioaddr, 0, 0, control, 16);
  udelay(100);
  SelectPage(0);
  dev->if_port = (GetByte(XIRCREG_ESR) & MediaSelect) ? 1 : 2;
     }
 } else {
     linkpartner = mii_rd(ioaddr, 0, 5);
     netdev_info(dev, "MII link partner: %04x\n", linkpartner);
     if (linkpartner & 0x0080) {
  dev->if_port = 4;
     } else
  dev->if_port = 1;
 }
    }

    return 1;
}
