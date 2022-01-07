
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;


 int CTRL_EXT ;
 int E1000_CTRL_EXT_EE_RST ;
 int e1e_flush () ;
 int er32 (int ) ;
 int ew32 (int ,int ) ;
 int usleep_range (int,int) ;

void e1000e_reload_nvm_generic(struct e1000_hw *hw)
{
 u32 ctrl_ext;

 usleep_range(10, 20);
 ctrl_ext = er32(CTRL_EXT);
 ctrl_ext |= E1000_CTRL_EXT_EE_RST;
 ew32(CTRL_EXT, ctrl_ext);
 e1e_flush();
}
