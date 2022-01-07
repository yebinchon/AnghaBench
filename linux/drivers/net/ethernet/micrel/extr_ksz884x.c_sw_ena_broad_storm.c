
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ksz_hw {TYPE_1__* ksz_switch; } ;
struct TYPE_2__ {int broad_per; } ;


 int port_cfg_broad_storm (struct ksz_hw*,int,int) ;
 int sw_cfg_broad_storm (struct ksz_hw*,int ) ;

__attribute__((used)) static void sw_ena_broad_storm(struct ksz_hw *hw, int port)
{
 sw_cfg_broad_storm(hw, hw->ksz_switch->broad_per);
 port_cfg_broad_storm(hw, port, 1);
}
