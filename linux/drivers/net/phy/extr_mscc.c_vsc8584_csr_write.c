
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct phy_device {int dummy; } ;


 int GENMASK (int,int ) ;
 int MSCC_PHY_TR_CNTL ;
 int MSCC_PHY_TR_LSB ;
 int MSCC_PHY_TR_MSB ;
 int TR_ADDR (int ) ;
 int TR_WRITE ;
 int phy_base_write (struct phy_device*,int ,int) ;

__attribute__((used)) static void vsc8584_csr_write(struct phy_device *phydev, u16 addr, u32 val)
{
 phy_base_write(phydev, MSCC_PHY_TR_MSB, val >> 16);
 phy_base_write(phydev, MSCC_PHY_TR_LSB, val & GENMASK(15, 0));
 phy_base_write(phydev, MSCC_PHY_TR_CNTL, TR_WRITE | TR_ADDR(addr));
}
