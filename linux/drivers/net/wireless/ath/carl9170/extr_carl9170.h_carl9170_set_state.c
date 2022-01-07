
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar9170 {int state_lock; } ;
typedef enum carl9170_device_state { ____Placeholder_carl9170_device_state } carl9170_device_state ;


 int __carl9170_set_state (struct ar9170*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void carl9170_set_state(struct ar9170 *ar,
 enum carl9170_device_state newstate)
{
 unsigned long flags;

 spin_lock_irqsave(&ar->state_lock, flags);
 __carl9170_set_state(ar, newstate);
 spin_unlock_irqrestore(&ar->state_lock, flags);
}
