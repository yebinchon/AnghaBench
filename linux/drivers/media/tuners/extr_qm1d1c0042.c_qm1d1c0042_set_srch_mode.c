
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qm1d1c0042_state {int* regs; } ;


 int reg_write (struct qm1d1c0042_state*,int,int) ;

__attribute__((used)) static int qm1d1c0042_set_srch_mode(struct qm1d1c0042_state *state, bool fast)
{
 if (fast)
  state->regs[0x03] |= 0x01;
 else
  state->regs[0x03] &= ~0x01 & 0xff;

 return reg_write(state, 0x03, state->regs[0x03]);
}
