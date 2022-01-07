
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct mii_if_info {int (* mdio_read ) (int ,int ,int ) ;int phy_id; int dev; } ;


 int mii_lpa_to_ethtool_lpa_t (int) ;
 int stub1 (int ,int ,int ) ;

__attribute__((used)) static u32 mii_get_an(struct mii_if_info *mii, u16 addr)
{
 int advert;

 advert = mii->mdio_read(mii->dev, mii->phy_id, addr);

 return mii_lpa_to_ethtool_lpa_t(advert);
}
