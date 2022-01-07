
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct phy_device {int dummy; } ;


 int MSCC_EXT_PAGE_ACCESS ;
 int MSCC_PHY_PAGE_EXTENDED ;
 int MSCC_PHY_PAGE_STANDARD ;
 int MSCC_PHY_VERIPHY_CNTL_2 ;
 int MSCC_PHY_VERIPHY_CNTL_3 ;
 int PROC_CMD_CRC16 ;
 int phy_base_read (struct phy_device*,int ) ;
 int phy_base_write (struct phy_device*,int ,int ) ;
 int vsc8584_cmd (struct phy_device*,int ) ;

__attribute__((used)) static int vsc8584_get_fw_crc(struct phy_device *phydev, u16 start, u16 size,
         u16 *crc)
{
 int ret;

 phy_base_write(phydev, MSCC_EXT_PAGE_ACCESS, MSCC_PHY_PAGE_EXTENDED);

 phy_base_write(phydev, MSCC_PHY_VERIPHY_CNTL_2, start);
 phy_base_write(phydev, MSCC_PHY_VERIPHY_CNTL_3, size);


 ret = vsc8584_cmd(phydev, PROC_CMD_CRC16);
 if (ret)
  goto out;

 phy_base_write(phydev, MSCC_EXT_PAGE_ACCESS, MSCC_PHY_PAGE_EXTENDED);

 *crc = phy_base_read(phydev, MSCC_PHY_VERIPHY_CNTL_2);

out:
 phy_base_write(phydev, MSCC_EXT_PAGE_ACCESS, MSCC_PHY_PAGE_STANDARD);

 return ret;
}
