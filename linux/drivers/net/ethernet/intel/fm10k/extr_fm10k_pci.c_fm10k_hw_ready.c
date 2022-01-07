
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fm10k_hw {int hw_addr; } ;
struct fm10k_intfc {struct fm10k_hw hw; } ;


 int ENODEV ;
 scalar_t__ FM10K_REMOVED (int ) ;
 int fm10k_write_flush (struct fm10k_hw*) ;

__attribute__((used)) static int fm10k_hw_ready(struct fm10k_intfc *interface)
{
 struct fm10k_hw *hw = &interface->hw;

 fm10k_write_flush(hw);

 return FM10K_REMOVED(hw->hw_addr) ? -ENODEV : 0;
}
