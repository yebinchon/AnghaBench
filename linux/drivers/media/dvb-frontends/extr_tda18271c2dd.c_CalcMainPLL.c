
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct tda_state {int* m_Regs; } ;


 int EINVAL ;
 size_t MD1 ;
 size_t MD2 ;
 size_t MD3 ;
 size_t MPD ;
 int SearchMap3 (int ,int,int*,int*) ;
 int UpdateRegs (struct tda_state*,size_t,size_t) ;
 int do_div (int,int) ;
 int m_Main_PLL_Map ;

__attribute__((used)) static int CalcMainPLL(struct tda_state *state, u32 freq)
{

 u8 PostDiv;
 u8 Div;
 u64 OscFreq;
 u32 MainDiv;

 if (!SearchMap3(m_Main_PLL_Map, freq, &PostDiv, &Div))
  return -EINVAL;

 OscFreq = (u64) freq * (u64) Div;
 OscFreq *= (u64) 16384;
 do_div(OscFreq, (u64)16000000);
 MainDiv = OscFreq;

 state->m_Regs[MPD] = PostDiv & 0x77;
 state->m_Regs[MD1] = ((MainDiv >> 16) & 0x7F);
 state->m_Regs[MD2] = ((MainDiv >> 8) & 0xFF);
 state->m_Regs[MD3] = (MainDiv & 0xFF);

 return UpdateRegs(state, MPD, MD3);
}
