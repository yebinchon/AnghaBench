
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phylink {unsigned long phylink_disable_state; int resolve; } ;


 int flush_work (int *) ;
 int queue_work (int ,int *) ;
 int set_bit (int,unsigned long*) ;
 int system_power_efficient_wq ;

__attribute__((used)) static void phylink_run_resolve_and_disable(struct phylink *pl, int bit)
{
 unsigned long state = pl->phylink_disable_state;

 set_bit(bit, &pl->phylink_disable_state);
 if (state == 0) {
  queue_work(system_power_efficient_wq, &pl->resolve);
  flush_work(&pl->resolve);
 }
}
