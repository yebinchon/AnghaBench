
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct phy_device {int dummy; } ;


 int MSCC_EXT_PAGE_ACCESS ;
 int MSCC_EXT_PAGE_CSR_CNTL_17 ;
 int MSCC_EXT_PAGE_CSR_CNTL_18 ;
 int MSCC_EXT_PAGE_CSR_CNTL_19 ;
 int MSCC_EXT_PAGE_CSR_CNTL_20 ;
 int MSCC_PHY_CSR_CNTL_19_CMD ;
 int MSCC_PHY_CSR_CNTL_19_READ ;
 int MSCC_PHY_CSR_CNTL_19_REG_ADDR (int) ;
 int MSCC_PHY_CSR_CNTL_19_TARGET (int) ;
 int MSCC_PHY_CSR_CNTL_20_TARGET (int) ;
 int MSCC_PHY_PAGE_CSR_CNTL ;
 int MSCC_PHY_PAGE_STANDARD ;
 int PROC_CMD_NCOMPLETED_TIMEOUT_MS ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int ) ;
 int phy_base_read (struct phy_device*,int ) ;
 int phy_base_write (struct phy_device*,int ,int) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int usleep_range (int,int) ;

__attribute__((used)) static u32 vsc85xx_csr_ctrl_phy_read(struct phy_device *phydev,
         u32 target, u32 reg)
{
 unsigned long deadline;
 u32 val, val_l, val_h;

 phy_base_write(phydev, MSCC_EXT_PAGE_ACCESS, MSCC_PHY_PAGE_CSR_CNTL);
 phy_base_write(phydev, MSCC_EXT_PAGE_CSR_CNTL_20,
         MSCC_PHY_CSR_CNTL_20_TARGET(target >> 2));


 phy_base_write(phydev, MSCC_EXT_PAGE_CSR_CNTL_19,
         MSCC_PHY_CSR_CNTL_19_CMD | MSCC_PHY_CSR_CNTL_19_READ |
         MSCC_PHY_CSR_CNTL_19_REG_ADDR(reg) |
         MSCC_PHY_CSR_CNTL_19_TARGET(target & 0x3));


 deadline = jiffies + msecs_to_jiffies(PROC_CMD_NCOMPLETED_TIMEOUT_MS);
 do {
  usleep_range(500, 1000);
  val = phy_base_read(phydev, MSCC_EXT_PAGE_CSR_CNTL_19);
 } while (time_before(jiffies, deadline) &&
  !(val & MSCC_PHY_CSR_CNTL_19_CMD));

 if (!(val & MSCC_PHY_CSR_CNTL_19_CMD))
  return 0xffffffff;


 val_l = phy_base_read(phydev, MSCC_EXT_PAGE_CSR_CNTL_17);


 val_h = phy_base_read(phydev, MSCC_EXT_PAGE_CSR_CNTL_18);

 phy_base_write(phydev, MSCC_EXT_PAGE_ACCESS,
         MSCC_PHY_PAGE_STANDARD);

 return (val_h << 16) | val_l;
}
