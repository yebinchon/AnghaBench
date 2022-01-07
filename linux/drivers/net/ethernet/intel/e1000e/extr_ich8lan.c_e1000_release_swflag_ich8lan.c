
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct e1000_hw {TYPE_1__* adapter; } ;
struct TYPE_2__ {int state; } ;


 int E1000_EXTCNF_CTRL_SWFLAG ;
 int EXTCNF_CTRL ;
 int __E1000_ACCESS_SHARED_RESOURCE ;
 int clear_bit (int ,int *) ;
 int e_dbg (char*) ;
 int er32 (int ) ;
 int ew32 (int ,int) ;

__attribute__((used)) static void e1000_release_swflag_ich8lan(struct e1000_hw *hw)
{
 u32 extcnf_ctrl;

 extcnf_ctrl = er32(EXTCNF_CTRL);

 if (extcnf_ctrl & E1000_EXTCNF_CTRL_SWFLAG) {
  extcnf_ctrl &= ~E1000_EXTCNF_CTRL_SWFLAG;
  ew32(EXTCNF_CTRL, extcnf_ctrl);
 } else {
  e_dbg("Semaphore unexpectedly released by sw/fw/hw\n");
 }

 clear_bit(__E1000_ACCESS_SHARED_RESOURCE, &hw->adapter->state);
}
