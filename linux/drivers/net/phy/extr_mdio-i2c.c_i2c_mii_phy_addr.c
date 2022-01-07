
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int i2c_mii_phy_addr(int phy_id)
{
 return phy_id + 0x40;
}
