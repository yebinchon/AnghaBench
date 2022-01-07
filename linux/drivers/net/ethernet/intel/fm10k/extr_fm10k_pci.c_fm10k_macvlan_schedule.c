
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fm10k_intfc {int state; int macvlan_task; } ;


 int __FM10K_MACVLAN_DISABLE ;
 int __FM10K_MACVLAN_REQUEST ;
 int __FM10K_MACVLAN_SCHED ;
 int clear_bit (int ,int ) ;
 int fm10k_workqueue ;
 int queue_delayed_work (int ,int *,int) ;
 int set_bit (int ,int ) ;
 int test_and_set_bit (int ,int ) ;
 int test_bit (int ,int ) ;

void fm10k_macvlan_schedule(struct fm10k_intfc *interface)
{



 if (!test_bit(__FM10K_MACVLAN_DISABLE, interface->state) &&
     !test_and_set_bit(__FM10K_MACVLAN_SCHED, interface->state)) {
  clear_bit(__FM10K_MACVLAN_REQUEST, interface->state);





  queue_delayed_work(fm10k_workqueue,
       &interface->macvlan_task, 10);
 } else {
  set_bit(__FM10K_MACVLAN_REQUEST, interface->state);
 }
}
