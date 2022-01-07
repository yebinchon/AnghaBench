
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_ready; } ;
struct fm10k_hw {TYPE_1__ mac; } ;
typedef int s32 ;



s32 fm10k_start_hw_generic(struct fm10k_hw *hw)
{

 hw->mac.tx_ready = 1;

 return 0;
}
