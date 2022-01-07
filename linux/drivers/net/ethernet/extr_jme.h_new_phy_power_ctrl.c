
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static inline int new_phy_power_ctrl(u8 chip_main_rev)
{
 return chip_main_rev >= 5;
}
