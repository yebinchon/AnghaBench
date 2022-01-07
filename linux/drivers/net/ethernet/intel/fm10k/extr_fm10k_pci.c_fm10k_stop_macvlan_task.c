
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fm10k_intfc {int state; int macvlan_task; } ;


 int __FM10K_MACVLAN_DISABLE ;
 int __FM10K_MACVLAN_SCHED ;
 int cancel_delayed_work_sync (int *) ;
 int clear_bit (int ,int ) ;
 int set_bit (int ,int ) ;

__attribute__((used)) static void fm10k_stop_macvlan_task(struct fm10k_intfc *interface)
{

 set_bit(__FM10K_MACVLAN_DISABLE, interface->state);


 cancel_delayed_work_sync(&interface->macvlan_task);







 clear_bit(__FM10K_MACVLAN_SCHED, interface->state);
}
