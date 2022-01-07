
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_if_info {int dev; scalar_t__ force_media; } ;


 int korina_check_media (int ,int ) ;
 int netif_carrier_ok (int ) ;
 int netif_carrier_on (int ) ;

__attribute__((used)) static void korina_set_carrier(struct mii_if_info *mii)
{
 if (mii->force_media) {

  if (!netif_carrier_ok(mii->dev))
   netif_carrier_on(mii->dev);
 } else
  korina_check_media(mii->dev, 0);
}
