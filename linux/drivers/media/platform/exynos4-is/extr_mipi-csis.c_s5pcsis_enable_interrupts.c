
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct csis_state {int interrupt_mask; } ;


 int S5PCSIS_INTMSK ;
 int s5pcsis_read (struct csis_state*,int ) ;
 int s5pcsis_write (struct csis_state*,int ,int ) ;

__attribute__((used)) static void s5pcsis_enable_interrupts(struct csis_state *state, bool on)
{
 u32 val = s5pcsis_read(state, S5PCSIS_INTMSK);
 if (on)
  val |= state->interrupt_mask;
 else
  val &= ~state->interrupt_mask;
 s5pcsis_write(state, S5PCSIS_INTMSK, val);
}
