
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csis_state {int dummy; } ;


 int s5pcsis_enable_interrupts (struct csis_state*,int) ;
 int s5pcsis_reset (struct csis_state*) ;
 int s5pcsis_set_params (struct csis_state*) ;
 int s5pcsis_system_enable (struct csis_state*,int) ;

__attribute__((used)) static void s5pcsis_start_stream(struct csis_state *state)
{
 s5pcsis_reset(state);
 s5pcsis_set_params(state);
 s5pcsis_system_enable(state, 1);
 s5pcsis_enable_interrupts(state, 1);
}
