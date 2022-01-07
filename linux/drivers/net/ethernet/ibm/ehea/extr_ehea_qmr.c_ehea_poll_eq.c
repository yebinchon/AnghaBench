
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehea_eqe {int dummy; } ;
struct ehea_eq {int spinlock; int hw_queue; } ;


 struct ehea_eqe* hw_eqit_eq_get_inc_valid (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

struct ehea_eqe *ehea_poll_eq(struct ehea_eq *eq)
{
 struct ehea_eqe *eqe;
 unsigned long flags;

 spin_lock_irqsave(&eq->spinlock, flags);
 eqe = hw_eqit_eq_get_inc_valid(&eq->hw_queue);
 spin_unlock_irqrestore(&eq->spinlock, flags);

 return eqe;
}
