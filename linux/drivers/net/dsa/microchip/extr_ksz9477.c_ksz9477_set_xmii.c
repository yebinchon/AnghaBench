
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ksz_device {int features; } ;


 int NEW_XMII ;
 int PORT_GMII_SEL ;
 int PORT_GMII_SEL_S1 ;
 int PORT_MII_SEL ;
 int PORT_MII_SEL_M ;
 int PORT_MII_SEL_S1 ;
 int PORT_RGMII_SEL ;
 int PORT_RGMII_SEL_S1 ;
 int PORT_RMII_SEL ;
 int PORT_RMII_SEL_S1 ;

__attribute__((used)) static void ksz9477_set_xmii(struct ksz_device *dev, int mode, u8 *data)
{
 u8 xmii;

 if (dev->features & NEW_XMII) {
  switch (mode) {
  case 0:
   xmii = PORT_MII_SEL;
   break;
  case 1:
   xmii = PORT_RMII_SEL;
   break;
  case 2:
   xmii = PORT_GMII_SEL;
   break;
  default:
   xmii = PORT_RGMII_SEL;
   break;
  }
 } else {
  switch (mode) {
  case 0:
   xmii = PORT_MII_SEL_S1;
   break;
  case 1:
   xmii = PORT_RMII_SEL_S1;
   break;
  case 2:
   xmii = PORT_GMII_SEL_S1;
   break;
  default:
   xmii = PORT_RGMII_SEL_S1;
   break;
  }
 }
 *data &= ~PORT_MII_SEL_M;
 *data |= xmii;
}
