
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksz_hw {int dummy; } ;


 int port_cfg_broad_storm (struct ksz_hw*,int,int ) ;

__attribute__((used)) static void sw_dis_broad_storm(struct ksz_hw *hw, int port)
{
 port_cfg_broad_storm(hw, port, 0);
}
