
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int MII_KSZ9031RN_EDPD ;
 int MII_KSZ9031RN_EDPD_ENABLE ;
 int phy_read_mmd (struct phy_device*,int,int ) ;
 int phy_write_mmd (struct phy_device*,int,int ,int) ;

__attribute__((used)) static int ksz9031_enable_edpd(struct phy_device *phydev)
{
 int reg;

 reg = phy_read_mmd(phydev, 0x1C, MII_KSZ9031RN_EDPD);
 if (reg < 0)
  return reg;
 return phy_write_mmd(phydev, 0x1C, MII_KSZ9031RN_EDPD,
        reg | MII_KSZ9031RN_EDPD_ENABLE);
}
