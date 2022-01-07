
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksz_hw {int enabled; } ;


 int hw_start_rx (struct ksz_hw*) ;
 int hw_start_tx (struct ksz_hw*) ;

__attribute__((used)) static void hw_enable(struct ksz_hw *hw)
{
 hw_start_tx(hw);
 hw_start_rx(hw);
 hw->enabled = 1;
}
