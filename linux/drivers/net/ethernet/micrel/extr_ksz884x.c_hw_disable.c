
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksz_hw {scalar_t__ enabled; } ;


 int hw_stop_rx (struct ksz_hw*) ;
 int hw_stop_tx (struct ksz_hw*) ;

__attribute__((used)) static void hw_disable(struct ksz_hw *hw)
{
 hw_stop_rx(hw);
 hw_stop_tx(hw);
 hw->enabled = 0;
}
