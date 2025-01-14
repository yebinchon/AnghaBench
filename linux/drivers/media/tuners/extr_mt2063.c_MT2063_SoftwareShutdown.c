
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mt2063_state {int* reg; } ;


 size_t MT2063_REG_BYP_CTRL ;
 size_t MT2063_REG_PWR_1 ;
 int dprintk (int,char*) ;
 int mt2063_write (struct mt2063_state*,size_t,int*,int) ;

__attribute__((used)) static u32 MT2063_SoftwareShutdown(struct mt2063_state *state, u8 Shutdown)
{
 int status;

 dprintk(2, "\n");
 if (Shutdown == 1)
  state->reg[MT2063_REG_PWR_1] |= 0x04;
 else
  state->reg[MT2063_REG_PWR_1] &= ~0x04;

 status = mt2063_write(state,
       MT2063_REG_PWR_1,
       &state->reg[MT2063_REG_PWR_1], 1);

 if (Shutdown != 1) {
  state->reg[MT2063_REG_BYP_CTRL] =
      (state->reg[MT2063_REG_BYP_CTRL] & 0x9F) | 0x40;
  status |=
      mt2063_write(state,
        MT2063_REG_BYP_CTRL,
        &state->reg[MT2063_REG_BYP_CTRL],
        1);
  state->reg[MT2063_REG_BYP_CTRL] =
      (state->reg[MT2063_REG_BYP_CTRL] & 0x9F);
  status |=
      mt2063_write(state,
        MT2063_REG_BYP_CTRL,
        &state->reg[MT2063_REG_BYP_CTRL],
        1);
 }

 return status;
}
