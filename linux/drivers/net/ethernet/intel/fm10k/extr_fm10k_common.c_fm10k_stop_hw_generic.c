
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_queues; } ;
struct fm10k_hw {TYPE_1__ mac; } ;
typedef int s32 ;


 int fm10k_disable_queues_generic (struct fm10k_hw*,int ) ;

s32 fm10k_stop_hw_generic(struct fm10k_hw *hw)
{
 return fm10k_disable_queues_generic(hw, hw->mac.max_queues);
}
