
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ BGX_MODE_QSGMII ;
 scalar_t__ BGX_MODE_RGMII ;
 int PHY_INTERFACE_MODE_QSGMII ;
 int PHY_INTERFACE_MODE_RGMII ;
 int PHY_INTERFACE_MODE_SGMII ;

__attribute__((used)) static int phy_interface_mode(u8 lmac_type)
{
 if (lmac_type == BGX_MODE_QSGMII)
  return PHY_INTERFACE_MODE_QSGMII;
 if (lmac_type == BGX_MODE_RGMII)
  return PHY_INTERFACE_MODE_RGMII;

 return PHY_INTERFACE_MODE_SGMII;
}
