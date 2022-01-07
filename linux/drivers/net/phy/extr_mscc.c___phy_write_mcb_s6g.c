
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct phy_device {int dummy; } ;


 int EINVAL ;
 int EIO ;
 int ETIMEDOUT ;
 int PHY_MCB_TARGET ;
 int PROC_CMD_NCOMPLETED_TIMEOUT_MS ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int ) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int usleep_range (int,int) ;
 int vsc85xx_csr_ctrl_phy_read (struct phy_device*,int ,int) ;
 int vsc85xx_csr_ctrl_phy_write (struct phy_device*,int ,int,int) ;

__attribute__((used)) static int __phy_write_mcb_s6g(struct phy_device *phydev, u32 reg, u8 mcb,
          u32 op)
{
 unsigned long deadline;
 u32 val;
 int ret;

 ret = vsc85xx_csr_ctrl_phy_write(phydev, PHY_MCB_TARGET, reg,
      op | (1 << mcb));
 if (ret)
  return -EINVAL;

 deadline = jiffies + msecs_to_jiffies(PROC_CMD_NCOMPLETED_TIMEOUT_MS);
 do {
  usleep_range(500, 1000);
  val = vsc85xx_csr_ctrl_phy_read(phydev, PHY_MCB_TARGET, reg);

  if (val == 0xffffffff)
   return -EIO;

 } while (time_before(jiffies, deadline) && (val & op));

 if (val & op)
  return -ETIMEDOUT;

 return 0;
}
