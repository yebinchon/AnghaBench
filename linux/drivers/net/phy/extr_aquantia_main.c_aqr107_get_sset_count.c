
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int AQR107_SGMII_STAT_SZ ;

__attribute__((used)) static int aqr107_get_sset_count(struct phy_device *phydev)
{
 return AQR107_SGMII_STAT_SZ;
}
