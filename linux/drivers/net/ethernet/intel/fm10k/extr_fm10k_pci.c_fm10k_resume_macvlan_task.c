
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fm10k_intfc {int state; } ;


 int __FM10K_MACVLAN_DISABLE ;
 int __FM10K_MACVLAN_REQUEST ;
 int clear_bit (int ,int ) ;
 int fm10k_macvlan_schedule (struct fm10k_intfc*) ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static void fm10k_resume_macvlan_task(struct fm10k_intfc *interface)
{

 clear_bit(__FM10K_MACVLAN_DISABLE, interface->state);




 if (test_bit(__FM10K_MACVLAN_REQUEST, interface->state))
  fm10k_macvlan_schedule(interface);
}
