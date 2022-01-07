
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct phy_device {int dummy; } ;
struct bgmac {int dev; int net_dev; int phyaddr; TYPE_1__* mii_bus; } ;
typedef int bus_id ;
struct TYPE_2__ {int id; } ;


 scalar_t__ IS_ERR (struct phy_device*) ;
 int MII_BUS_ID_SIZE ;
 char* PHY_ID_FMT ;
 int PHY_INTERFACE_MODE_MII ;
 int PTR_ERR (struct phy_device*) ;
 int bgmac_adjust_link ;
 int dev_err (int ,char*) ;
 struct phy_device* phy_connect (int ,char*,int ,int ) ;
 int snprintf (char*,int,char*,int ,int ) ;

__attribute__((used)) static int bcma_phy_connect(struct bgmac *bgmac)
{
 struct phy_device *phy_dev;
 char bus_id[MII_BUS_ID_SIZE + 3];


 snprintf(bus_id, sizeof(bus_id), PHY_ID_FMT, bgmac->mii_bus->id,
   bgmac->phyaddr);
 phy_dev = phy_connect(bgmac->net_dev, bus_id, bgmac_adjust_link,
         PHY_INTERFACE_MODE_MII);
 if (IS_ERR(phy_dev)) {
  dev_err(bgmac->dev, "PHY connection failed\n");
  return PTR_ERR(phy_dev);
 }

 return 0;
}
