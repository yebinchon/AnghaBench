
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct phy_device {int dummy; } ;


 int PHY_MCB_S6G_WRITE ;
 int __phy_write_mcb_s6g (struct phy_device*,int ,int ,int ) ;

__attribute__((used)) static int phy_commit_mcb_s6g(struct phy_device *phydev, u32 reg, u8 mcb)
{
 return __phy_write_mcb_s6g(phydev, reg, mcb, PHY_MCB_S6G_WRITE);
}
