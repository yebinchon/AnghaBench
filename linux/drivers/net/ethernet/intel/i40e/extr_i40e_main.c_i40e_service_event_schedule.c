
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_pf {int service_task; int state; } ;


 int __I40E_DOWN ;
 int __I40E_RECOVERY_MODE ;
 int __I40E_RESET_RECOVERY_PENDING ;
 int i40e_wq ;
 int queue_work (int ,int *) ;
 scalar_t__ test_bit (int ,int ) ;

void i40e_service_event_schedule(struct i40e_pf *pf)
{
 if ((!test_bit(__I40E_DOWN, pf->state) &&
      !test_bit(__I40E_RESET_RECOVERY_PENDING, pf->state)) ||
       test_bit(__I40E_RECOVERY_MODE, pf->state))
  queue_work(i40e_wq, &pf->service_task);
}
