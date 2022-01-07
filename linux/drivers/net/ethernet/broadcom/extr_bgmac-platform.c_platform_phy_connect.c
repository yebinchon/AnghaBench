
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct phy_device {int dummy; } ;
struct TYPE_3__ {scalar_t__ nicpm_base; } ;
struct bgmac {TYPE_2__* dev; int net_dev; TYPE_1__ plat; } ;
struct TYPE_4__ {int of_node; } ;


 int ENODEV ;
 int bgmac_adjust_link ;
 int bgmac_nicpm_speed_set ;
 int dev_err (TYPE_2__*,char*) ;
 struct phy_device* of_phy_get_and_connect (int ,int ,int ) ;

__attribute__((used)) static int platform_phy_connect(struct bgmac *bgmac)
{
 struct phy_device *phy_dev;

 if (bgmac->plat.nicpm_base)
  phy_dev = of_phy_get_and_connect(bgmac->net_dev,
       bgmac->dev->of_node,
       bgmac_nicpm_speed_set);
 else
  phy_dev = of_phy_get_and_connect(bgmac->net_dev,
       bgmac->dev->of_node,
       bgmac_adjust_link);
 if (!phy_dev) {
  dev_err(bgmac->dev, "PHY connection failed\n");
  return -ENODEV;
 }

 return 0;
}
