
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int vbus; int chgstatus; int work; int flags; } ;


 int ENODEV ;
 int FLAG_VBUS_CHANGED ;
 int TPS_CHG_USB ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int queue_delayed_work (int ,int *,int ) ;
 int system_power_efficient_wq ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 TYPE_1__* the_tps ;

int tps65010_set_vbus_draw(unsigned mA)
{
 unsigned long flags;

 if (!the_tps)
  return -ENODEV;


 local_irq_save(flags);
 if (mA >= 500)
  mA = 500;
 else if (mA >= 100)
  mA = 100;
 else
  mA = 0;
 the_tps->vbus = mA;
 if ((the_tps->chgstatus & TPS_CHG_USB)
   && test_and_set_bit(
    FLAG_VBUS_CHANGED, &the_tps->flags)) {

  queue_delayed_work(system_power_efficient_wq, &the_tps->work,
       0);
 }
 local_irq_restore(flags);

 return 0;
}
