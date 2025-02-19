
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct tda_state {int* m_Regs; } ;
typedef int s32 ;


 int CalcCalPLL (struct tda_state*,scalar_t__) ;
 int CalcMainPLL (struct tda_state*,scalar_t__) ;
 size_t EB13 ;
 size_t EB14 ;
 size_t EB18 ;
 size_t EB20 ;
 size_t EB4 ;
 size_t EB7 ;
 int EINVAL ;
 size_t EP1 ;
 size_t EP2 ;
 size_t EP3 ;
 size_t EP4 ;
 size_t EP5 ;
 size_t ID ;
 int NUM_REGS ;
 int ReadExtented (struct tda_state*,int*) ;
 scalar_t__ SearchMap1 (int ,scalar_t__,int*) ;
 scalar_t__ SearchMap3 (int ,scalar_t__,int*,int*) ;
 int UpdateReg (struct tda_state*,size_t) ;
 int UpdateRegs (struct tda_state*,size_t,size_t) ;
 int m_BP_Filter_Map ;
 int m_GainTaper_Map ;
 int m_KM_Map ;
 int msleep (int) ;

__attribute__((used)) static int CalibrateRF(struct tda_state *state,
         u8 RFBand, u32 freq, s32 *pCprog)
{
 int status = 0;
 u8 Regs[NUM_REGS];
 do {
  u8 BP_Filter = 0;
  u8 GainTaper = 0;
  u8 RFC_K = 0;
  u8 RFC_M = 0;

  state->m_Regs[EP4] &= ~0x03;
  status = UpdateReg(state, EP4);
  if (status < 0)
   break;
  state->m_Regs[EB18] |= 0x03;
  status = UpdateReg(state, EB18);
  if (status < 0)
   break;



  if (state->m_Regs[ID] != 0x83)
   state->m_Regs[EP3] |= 0x40;

  if (!(SearchMap1(m_BP_Filter_Map, freq, &BP_Filter) &&
   SearchMap1(m_GainTaper_Map, freq, &GainTaper) &&
   SearchMap3(m_KM_Map, freq, &RFC_K, &RFC_M)))
   return -EINVAL;

  state->m_Regs[EP1] = (state->m_Regs[EP1] & ~0x07) | BP_Filter;
  state->m_Regs[EP2] = (RFBand << 5) | GainTaper;

  state->m_Regs[EB13] = (state->m_Regs[EB13] & ~0x7C) | (RFC_K << 4) | (RFC_M << 2);

  status = UpdateRegs(state, EP1, EP3);
  if (status < 0)
   break;
  status = UpdateReg(state, EB13);
  if (status < 0)
   break;

  state->m_Regs[EB4] |= 0x20;
  status = UpdateReg(state, EB4);
  if (status < 0)
   break;

  state->m_Regs[EB7] |= 0x20;
  status = UpdateReg(state, EB7);
  if (status < 0)
   break;

  state->m_Regs[EB14] = 0;
  status = UpdateReg(state, EB14);
  if (status < 0)
   break;

  state->m_Regs[EB20] &= ~0x20;
  status = UpdateReg(state, EB20);
  if (status < 0)
   break;

  state->m_Regs[EP4] |= 0x03;
  status = UpdateRegs(state, EP4, EP5);
  if (status < 0)
   break;

  status = CalcCalPLL(state, freq);
  if (status < 0)
   break;
  status = CalcMainPLL(state, freq + 1000000);
  if (status < 0)
   break;

  msleep(5);
  status = UpdateReg(state, EP2);
  if (status < 0)
   break;
  status = UpdateReg(state, EP1);
  if (status < 0)
   break;
  status = UpdateReg(state, EP2);
  if (status < 0)
   break;
  status = UpdateReg(state, EP1);
  if (status < 0)
   break;

  state->m_Regs[EB4] &= ~0x20;
  status = UpdateReg(state, EB4);
  if (status < 0)
   break;

  state->m_Regs[EB7] &= ~0x20;
  status = UpdateReg(state, EB7);
  if (status < 0)
   break;
  msleep(10);

  state->m_Regs[EB20] |= 0x20;
  status = UpdateReg(state, EB20);
  if (status < 0)
   break;
  msleep(60);

  state->m_Regs[EP4] &= ~0x03;
  state->m_Regs[EP3] &= ~0x40;
  state->m_Regs[EB18] &= ~0x03;
  status = UpdateReg(state, EB18);
  if (status < 0)
   break;
  status = UpdateRegs(state, EP3, EP4);
  if (status < 0)
   break;
  status = UpdateReg(state, EP1);
  if (status < 0)
   break;

  status = ReadExtented(state, Regs);
  if (status < 0)
   break;

  *pCprog = Regs[EB14];

 } while (0);
 return status;
}
