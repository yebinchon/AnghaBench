
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct board_info {int dummy; } ;


 int BMCR_RESET ;
 int DM9000_GPR ;
 int DM9000_RCR ;
 int MII_BMCR ;
 int dm9000_mask_interrupts (struct board_info*) ;
 int dm9000_phy_write (struct net_device*,int ,int ,int ) ;
 int iow (struct board_info*,int ,int) ;
 struct board_info* netdev_priv (struct net_device*) ;

__attribute__((used)) static void
dm9000_shutdown(struct net_device *dev)
{
 struct board_info *db = netdev_priv(dev);


 dm9000_phy_write(dev, 0, MII_BMCR, BMCR_RESET);
 iow(db, DM9000_GPR, 0x01);
 dm9000_mask_interrupts(db);
 iow(db, DM9000_RCR, 0x00);
}
