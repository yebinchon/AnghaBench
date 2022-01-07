
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usbnet {int dummy; } ;


 int AX88179_PHY_ID ;
 int AX_ACCESS_PHY ;
 int MII_MMD_DATA ;
 int ax88179_phy_mmd_indirect (struct usbnet*,int ,int ) ;
 int ax88179_write_cmd (struct usbnet*,int ,int ,int ,int,int *) ;

__attribute__((used)) static int
ax88179_phy_write_mmd_indirect(struct usbnet *dev, u16 prtad, u16 devad,
          u16 data)
{
 int ret;

 ax88179_phy_mmd_indirect(dev, prtad, devad);

 ret = ax88179_write_cmd(dev, AX_ACCESS_PHY, AX88179_PHY_ID,
    MII_MMD_DATA, 2, &data);

 if (ret < 0)
  return ret;

 return 0;
}
