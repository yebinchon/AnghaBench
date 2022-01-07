
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nicvf {int rb_work_scheduled; int rbdr_work; scalar_t__ rb_alloc_fail; } ;


 int GFP_ATOMIC ;
 int msecs_to_jiffies (int) ;
 int nicvf_refill_rbdr (struct nicvf*,int ) ;
 int schedule_delayed_work (int *,int ) ;

void nicvf_rbdr_task(unsigned long data)
{
 struct nicvf *nic = (struct nicvf *)data;

 nicvf_refill_rbdr(nic, GFP_ATOMIC);
 if (nic->rb_alloc_fail) {
  nic->rb_work_scheduled = 1;
  schedule_delayed_work(&nic->rbdr_work, msecs_to_jiffies(10));
 }
}
