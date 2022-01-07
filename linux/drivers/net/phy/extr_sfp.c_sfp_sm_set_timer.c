
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfp {int timeout; } ;


 int cancel_delayed_work (int *) ;
 int mod_delayed_work (int ,int *,unsigned int) ;
 int system_power_efficient_wq ;

__attribute__((used)) static void sfp_sm_set_timer(struct sfp *sfp, unsigned int timeout)
{
 if (timeout)
  mod_delayed_work(system_power_efficient_wq, &sfp->timeout,
     timeout);
 else
  cancel_delayed_work(&sfp->timeout);
}
