
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda_state {int* m_Regs; } ;


 size_t EB18 ;
 size_t EB21 ;
 size_t EB23 ;
 size_t EP3 ;
 size_t EP4 ;
 int UpdateReg (struct tda_state*,size_t) ;
 int UpdateRegs (struct tda_state*,size_t,size_t) ;

__attribute__((used)) static int PowerScanInit(struct tda_state *state)
{
 int status = 0;
 do {
  state->m_Regs[EP3] = (state->m_Regs[EP3] & ~0x1F) | 0x12;
  state->m_Regs[EP4] = (state->m_Regs[EP4] & ~0x1F);
  status = UpdateRegs(state, EP3, EP4);
  if (status < 0)
   break;
  state->m_Regs[EB18] = (state->m_Regs[EB18] & ~0x03);
  status = UpdateReg(state, EB18);
  if (status < 0)
   break;
  state->m_Regs[EB21] = (state->m_Regs[EB21] & ~0x03);
  state->m_Regs[EB23] = (state->m_Regs[EB23] | 0x06);
  status = UpdateRegs(state, EB21, EB23);
  if (status < 0)
   break;
 } while (0);
 return status;
}
