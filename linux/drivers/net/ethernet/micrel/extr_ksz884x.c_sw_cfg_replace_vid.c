
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksz_hw {int dummy; } ;


 int port_cfg_replace_vid (struct ksz_hw*,int,int) ;

__attribute__((used)) static void sw_cfg_replace_vid(struct ksz_hw *hw, int port, int set)
{
 port_cfg_replace_vid(hw, port, set);
}
