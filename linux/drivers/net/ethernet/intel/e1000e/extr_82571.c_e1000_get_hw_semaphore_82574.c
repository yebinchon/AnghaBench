
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 scalar_t__ e1000_get_hw_semaphore_82573 (struct e1000_hw*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int swflag_mutex ;

__attribute__((used)) static s32 e1000_get_hw_semaphore_82574(struct e1000_hw *hw)
{
 s32 ret_val;

 mutex_lock(&swflag_mutex);
 ret_val = e1000_get_hw_semaphore_82573(hw);
 if (ret_val)
  mutex_unlock(&swflag_mutex);
 return ret_val;
}
