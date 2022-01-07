
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_hw {int dummy; } ;


 int e1000_put_hw_semaphore_82571 (struct e1000_hw*) ;
 int e1000e_release_nvm (struct e1000_hw*) ;

__attribute__((used)) static void e1000_release_nvm_82571(struct e1000_hw *hw)
{
 e1000e_release_nvm(hw);
 e1000_put_hw_semaphore_82571(hw);
}
