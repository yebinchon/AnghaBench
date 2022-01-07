
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usbnet {int dummy; } ;


 int AX88179_PHY_ID ;
 int AX_ACCESS_PHY ;
 int GMII_PHY_PAGE_SELECT ;
 int GMII_PHY_PGSEL_PAGE0 ;
 int GMII_PHY_PGSEL_PAGE3 ;
 int MII_PHYADDR ;
 int ax88179_write_cmd (struct usbnet*,int ,int ,int ,int,int*) ;

__attribute__((used)) static void ax88179_disable_eee(struct usbnet *dev)
{
 u16 tmp16;

 tmp16 = GMII_PHY_PGSEL_PAGE3;
 ax88179_write_cmd(dev, AX_ACCESS_PHY, AX88179_PHY_ID,
     GMII_PHY_PAGE_SELECT, 2, &tmp16);

 tmp16 = 0x3246;
 ax88179_write_cmd(dev, AX_ACCESS_PHY, AX88179_PHY_ID,
     MII_PHYADDR, 2, &tmp16);

 tmp16 = GMII_PHY_PGSEL_PAGE0;
 ax88179_write_cmd(dev, AX_ACCESS_PHY, AX88179_PHY_ID,
     GMII_PHY_PAGE_SELECT, 2, &tmp16);
}
