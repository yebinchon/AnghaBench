
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool i2c_mii_valid_phy_id(int phy_id)
{
 return phy_id != 0x10 && phy_id != 0x11;
}
