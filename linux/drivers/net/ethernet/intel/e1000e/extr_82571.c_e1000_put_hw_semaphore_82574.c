
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_hw {int dummy; } ;


 int e1000_put_hw_semaphore_82573 (struct e1000_hw*) ;
 int mutex_unlock (int *) ;
 int swflag_mutex ;

__attribute__((used)) static void e1000_put_hw_semaphore_82574(struct e1000_hw *hw)
{
 e1000_put_hw_semaphore_82573(hw);
 mutex_unlock(&swflag_mutex);
}
