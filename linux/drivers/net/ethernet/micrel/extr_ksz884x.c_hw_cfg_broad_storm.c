
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ksz_hw {TYPE_1__* ksz_switch; } ;
struct TYPE_2__ {int broad_per; } ;


 int sw_cfg_broad_storm (struct ksz_hw*,int) ;
 int sw_get_broad_storm (struct ksz_hw*,int*) ;

__attribute__((used)) static void hw_cfg_broad_storm(struct ksz_hw *hw, u8 percent)
{
 if (percent > 100)
  percent = 100;

 sw_cfg_broad_storm(hw, percent);
 sw_get_broad_storm(hw, &percent);
 hw->ksz_switch->broad_per = percent;
}
