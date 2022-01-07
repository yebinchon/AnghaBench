
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_if_info {int advertising; int (* mdio_read ) (int ,int ,int ) ;int full_duplex; int dev; int phy_id; scalar_t__ supports_gmii; scalar_t__ force_media; } ;


 int ADVERTISE_100FULL ;
 int ADVERTISE_100HALF ;
 int ADVERTISE_FULL ;
 int LPA_1000FULL ;
 int LPA_1000HALF ;
 int MII_ADVERTISE ;
 int MII_LPA ;
 int MII_STAT1000 ;
 scalar_t__ mii_link_ok (struct mii_if_info*) ;
 int mii_nway_result (int) ;
 int netdev_info (int ,char*,...) ;
 int netif_carrier_off (int ) ;
 scalar_t__ netif_carrier_ok (int ) ;
 int netif_carrier_on (int ) ;
 int stub1 (int ,int ,int ) ;
 int stub2 (int ,int ,int ) ;
 int stub3 (int ,int ,int ) ;

unsigned int mii_check_media (struct mii_if_info *mii,
         unsigned int ok_to_print,
         unsigned int init_media)
{
 unsigned int old_carrier, new_carrier;
 int advertise, lpa, media, duplex;
 int lpa2 = 0;


 old_carrier = netif_carrier_ok(mii->dev) ? 1 : 0;
 new_carrier = (unsigned int) mii_link_ok(mii);




 if ((!init_media) && (old_carrier == new_carrier))
  return 0;


 if (!new_carrier) {
  netif_carrier_off(mii->dev);
  if (ok_to_print)
   netdev_info(mii->dev, "link down\n");
  return 0;
 }




 netif_carrier_on(mii->dev);

 if (mii->force_media) {
  if (ok_to_print)
   netdev_info(mii->dev, "link up\n");
  return 0;
 }


 if ((!init_media) && (mii->advertising))
  advertise = mii->advertising;
 else {
  advertise = mii->mdio_read(mii->dev, mii->phy_id, MII_ADVERTISE);
  mii->advertising = advertise;
 }
 lpa = mii->mdio_read(mii->dev, mii->phy_id, MII_LPA);
 if (mii->supports_gmii)
  lpa2 = mii->mdio_read(mii->dev, mii->phy_id, MII_STAT1000);


 media = mii_nway_result(lpa & advertise);
 duplex = (media & ADVERTISE_FULL) ? 1 : 0;
 if (lpa2 & LPA_1000FULL)
  duplex = 1;

 if (ok_to_print)
  netdev_info(mii->dev, "link up, %uMbps, %s-duplex, lpa 0x%04X\n",
       lpa2 & (LPA_1000FULL | LPA_1000HALF) ? 1000 :
       media & (ADVERTISE_100FULL | ADVERTISE_100HALF) ?
       100 : 10,
       duplex ? "full" : "half",
       lpa);

 if ((init_media) || (mii->full_duplex != duplex)) {
  mii->full_duplex = duplex;
  return 1;
 }

 return 0;
}
