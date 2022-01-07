
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct phy_device {int dummy; } ;


 int NS_EXP_MEM_ADD ;
 int NS_EXP_MEM_DATA ;
 int phy_write (struct phy_device*,int ,int ) ;

__attribute__((used)) static void ns_exp_write(struct phy_device *phydev, u16 reg, u8 data)
{
 phy_write(phydev, NS_EXP_MEM_ADD, reg);
 phy_write(phydev, NS_EXP_MEM_DATA, data);
}
