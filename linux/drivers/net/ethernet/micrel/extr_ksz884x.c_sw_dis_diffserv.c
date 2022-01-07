
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksz_hw {int dummy; } ;


 int port_cfg_diffserv (struct ksz_hw*,int,int ) ;

__attribute__((used)) static void sw_dis_diffserv(struct ksz_hw *hw, int port)
{
 port_cfg_diffserv(hw, port, 0);
}
