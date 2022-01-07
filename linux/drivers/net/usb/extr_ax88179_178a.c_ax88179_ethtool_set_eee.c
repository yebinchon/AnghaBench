
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usbnet {int dummy; } ;
struct ethtool_eee {int advertised; } ;


 int MDIO_AN_EEE_ADV ;
 int MDIO_MMD_AN ;
 int ax88179_phy_write_mmd_indirect (struct usbnet*,int ,int ,int ) ;
 int ethtool_adv_to_mmd_eee_adv_t (int ) ;

__attribute__((used)) static int
ax88179_ethtool_set_eee(struct usbnet *dev, struct ethtool_eee *data)
{
 u16 tmp16 = ethtool_adv_to_mmd_eee_adv_t(data->advertised);

 return ax88179_phy_write_mmd_indirect(dev, MDIO_AN_EEE_ADV,
           MDIO_MMD_AN, tmp16);
}
