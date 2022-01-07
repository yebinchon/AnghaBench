
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int phy_id; } ;
struct usbnet {TYPE_1__ mii; int net; } ;


 int MII_PHYSID1 ;
 int MII_PHYSID2 ;
 int mdelay (int) ;
 int sr_mdio_read (int ,int ,int ) ;

__attribute__((used)) static u32 sr_get_phyid(struct usbnet *dev)
{
 int phy_reg;
 u32 phy_id;
 int i;


 for (i = 0; i < 100; i++) {
  phy_reg = sr_mdio_read(dev->net, dev->mii.phy_id, MII_PHYSID1);
  if (phy_reg != 0 && phy_reg != 0xFFFF)
   break;
  mdelay(1);
 }

 if (phy_reg <= 0 || phy_reg == 0xFFFF)
  return 0;

 phy_id = (phy_reg & 0xffff) << 16;

 phy_reg = sr_mdio_read(dev->net, dev->mii.phy_id, MII_PHYSID2);
 if (phy_reg < 0)
  return 0;

 phy_id |= (phy_reg & 0xffff);

 return phy_id;
}
