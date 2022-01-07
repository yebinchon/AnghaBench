
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mt2063_state {int * reg; } ;
typedef enum MT2063_Mask_Bits { ____Placeholder_MT2063_Mask_Bits } MT2063_Mask_Bits ;


 int MT2063_ALL_SD ;
 size_t MT2063_REG_PWR_1 ;
 size_t MT2063_REG_PWR_2 ;
 int dprintk (int,char*) ;
 int mt2063_write (struct mt2063_state*,size_t,int *,int) ;

__attribute__((used)) static u32 MT2063_ClearPowerMaskBits(struct mt2063_state *state,
         enum MT2063_Mask_Bits Bits)
{
 int status = 0;

 dprintk(2, "\n");
 Bits = (enum MT2063_Mask_Bits)(Bits & MT2063_ALL_SD);
 if ((Bits & 0xFF00) != 0) {
  state->reg[MT2063_REG_PWR_2] &= ~(u8) (Bits >> 8);
  status |=
      mt2063_write(state,
        MT2063_REG_PWR_2,
        &state->reg[MT2063_REG_PWR_2], 1);
 }
 if ((Bits & 0xFF) != 0) {
  state->reg[MT2063_REG_PWR_1] &= ~(u8) (Bits & 0xFF);
  status |=
      mt2063_write(state,
        MT2063_REG_PWR_1,
        &state->reg[MT2063_REG_PWR_1], 1);
 }

 return status;
}
