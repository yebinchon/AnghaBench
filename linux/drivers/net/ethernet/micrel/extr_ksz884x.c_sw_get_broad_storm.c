
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct ksz_hw {scalar_t__ io; } ;


 int BROADCAST_STORM_RATE_HI ;
 int BROADCAST_STORM_RATE_LO ;
 int BROADCAST_STORM_VALUE ;
 int DIV_ROUND_CLOSEST (int,int ) ;
 scalar_t__ KS8842_SWITCH_CTRL_3_OFFSET ;
 int readw (scalar_t__) ;

__attribute__((used)) static void sw_get_broad_storm(struct ksz_hw *hw, u8 *percent)
{
 int num;
 u16 data;

 data = readw(hw->io + KS8842_SWITCH_CTRL_3_OFFSET);
 num = (data & BROADCAST_STORM_RATE_HI);
 num <<= 8;
 num |= (data & BROADCAST_STORM_RATE_LO) >> 8;
 num = DIV_ROUND_CLOSEST(num * 100, BROADCAST_STORM_VALUE);
 *percent = (u8) num;
}
