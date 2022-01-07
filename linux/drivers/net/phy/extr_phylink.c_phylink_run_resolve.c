
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phylink {int resolve; int phylink_disable_state; } ;


 int queue_work (int ,int *) ;
 int system_power_efficient_wq ;

__attribute__((used)) static void phylink_run_resolve(struct phylink *pl)
{
 if (!pl->phylink_disable_state)
  queue_work(system_power_efficient_wq, &pl->resolve);
}
