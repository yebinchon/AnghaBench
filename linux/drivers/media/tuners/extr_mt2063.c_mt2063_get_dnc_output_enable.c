
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt2063_state {int* reg; } ;
typedef enum MT2063_DNC_Output_Enable { ____Placeholder_MT2063_DNC_Output_Enable } MT2063_DNC_Output_Enable ;


 int MT2063_DNC_1 ;
 int MT2063_DNC_2 ;
 int MT2063_DNC_BOTH ;
 int MT2063_DNC_NONE ;
 size_t MT2063_REG_DNC_GAIN ;
 size_t MT2063_REG_VGA_GAIN ;
 int dprintk (int,char*) ;

__attribute__((used)) static u32 mt2063_get_dnc_output_enable(struct mt2063_state *state,
     enum MT2063_DNC_Output_Enable *pValue)
{
 dprintk(2, "\n");

 if ((state->reg[MT2063_REG_DNC_GAIN] & 0x03) == 0x03) {
  if ((state->reg[MT2063_REG_VGA_GAIN] & 0x03) == 0x03)
   *pValue = MT2063_DNC_NONE;
  else
   *pValue = MT2063_DNC_2;
 } else {
  if ((state->reg[MT2063_REG_VGA_GAIN] & 0x03) == 0x03)
   *pValue = MT2063_DNC_1;
  else
   *pValue = MT2063_DNC_BOTH;
 }
 return 0;
}
