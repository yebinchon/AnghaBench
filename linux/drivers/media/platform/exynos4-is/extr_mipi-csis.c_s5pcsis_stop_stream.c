
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csis_state {int dummy; } ;


 int s5pcsis_enable_interrupts (struct csis_state*,int) ;
 int s5pcsis_system_enable (struct csis_state*,int) ;

__attribute__((used)) static void s5pcsis_stop_stream(struct csis_state *state)
{
 s5pcsis_enable_interrupts(state, 0);
 s5pcsis_system_enable(state, 0);
}
