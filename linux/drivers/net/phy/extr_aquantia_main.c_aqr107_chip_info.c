
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct phy_device {int dummy; } ;


 int FIELD_GET (int ,int) ;
 int MDIO_MMD_VEND1 ;
 int VEND1_GLOBAL_FW_ID ;
 int VEND1_GLOBAL_FW_ID_MAJOR ;
 int VEND1_GLOBAL_FW_ID_MINOR ;
 int VEND1_GLOBAL_RSVD_STAT1 ;
 int VEND1_GLOBAL_RSVD_STAT1_FW_BUILD_ID ;
 int VEND1_GLOBAL_RSVD_STAT1_PROV_ID ;
 int phy_read_mmd (struct phy_device*,int ,int ) ;
 int phydev_dbg (struct phy_device*,char*,int ,int ,int ,int ) ;

__attribute__((used)) static void aqr107_chip_info(struct phy_device *phydev)
{
 u8 fw_major, fw_minor, build_id, prov_id;
 int val;

 val = phy_read_mmd(phydev, MDIO_MMD_VEND1, VEND1_GLOBAL_FW_ID);
 if (val < 0)
  return;

 fw_major = FIELD_GET(VEND1_GLOBAL_FW_ID_MAJOR, val);
 fw_minor = FIELD_GET(VEND1_GLOBAL_FW_ID_MINOR, val);

 val = phy_read_mmd(phydev, MDIO_MMD_VEND1, VEND1_GLOBAL_RSVD_STAT1);
 if (val < 0)
  return;

 build_id = FIELD_GET(VEND1_GLOBAL_RSVD_STAT1_FW_BUILD_ID, val);
 prov_id = FIELD_GET(VEND1_GLOBAL_RSVD_STAT1_PROV_ID, val);

 phydev_dbg(phydev, "FW %u.%u, Build %u, Provisioning %u\n",
     fw_major, fw_minor, build_id, prov_id);
}
