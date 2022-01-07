
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mt2063_state {int* reg; size_t rcvr_mode; } ;
typedef enum MT2063_DNC_Output_Enable { ____Placeholder_MT2063_DNC_Output_Enable } MT2063_DNC_Output_Enable ;


 int* DNC1GC ;
 int* DNC2GC ;




 size_t MT2063_REG_DNC_GAIN ;
 size_t MT2063_REG_RSVD_20 ;
 size_t MT2063_REG_VGA_GAIN ;
 int dprintk (int,char*) ;
 int mt2063_setreg (struct mt2063_state*,size_t,int) ;

__attribute__((used)) static u32 mt2063_set_dnc_output_enable(struct mt2063_state *state,
     enum MT2063_DNC_Output_Enable nValue)
{
 int status = 0;
 u8 val = 0;

 dprintk(2, "\n");


 switch (nValue) {
 case 128:
  val = (state->reg[MT2063_REG_DNC_GAIN] & 0xFC) | 0x03;
  if (state->reg[MT2063_REG_DNC_GAIN] !=
      val)
   status |=
       mt2063_setreg(state,
       MT2063_REG_DNC_GAIN,
       val);

  val = (state->reg[MT2063_REG_VGA_GAIN] & 0xFC) | 0x03;
  if (state->reg[MT2063_REG_VGA_GAIN] !=
      val)
   status |=
       mt2063_setreg(state,
       MT2063_REG_VGA_GAIN,
       val);

  val = (state->reg[MT2063_REG_RSVD_20] & ~0x40);
  if (state->reg[MT2063_REG_RSVD_20] !=
      val)
   status |=
       mt2063_setreg(state,
       MT2063_REG_RSVD_20,
       val);

  break;
 case 131:
  val = (state->reg[MT2063_REG_DNC_GAIN] & 0xFC) | (DNC1GC[state->rcvr_mode] & 0x03);
  if (state->reg[MT2063_REG_DNC_GAIN] !=
      val)
   status |=
       mt2063_setreg(state,
       MT2063_REG_DNC_GAIN,
       val);

  val = (state->reg[MT2063_REG_VGA_GAIN] & 0xFC) | 0x03;
  if (state->reg[MT2063_REG_VGA_GAIN] !=
      val)
   status |=
       mt2063_setreg(state,
       MT2063_REG_VGA_GAIN,
       val);

  val = (state->reg[MT2063_REG_RSVD_20] & ~0x40);
  if (state->reg[MT2063_REG_RSVD_20] !=
      val)
   status |=
       mt2063_setreg(state,
       MT2063_REG_RSVD_20,
       val);

  break;
 case 130:
  val = (state->reg[MT2063_REG_DNC_GAIN] & 0xFC) | 0x03;
  if (state->reg[MT2063_REG_DNC_GAIN] !=
      val)
   status |=
       mt2063_setreg(state,
       MT2063_REG_DNC_GAIN,
       val);

  val = (state->reg[MT2063_REG_VGA_GAIN] & 0xFC) | (DNC2GC[state->rcvr_mode] & 0x03);
  if (state->reg[MT2063_REG_VGA_GAIN] !=
      val)
   status |=
       mt2063_setreg(state,
       MT2063_REG_VGA_GAIN,
       val);

  val = (state->reg[MT2063_REG_RSVD_20] | 0x40);
  if (state->reg[MT2063_REG_RSVD_20] !=
      val)
   status |=
       mt2063_setreg(state,
       MT2063_REG_RSVD_20,
       val);

  break;
 case 129:
  val = (state->reg[MT2063_REG_DNC_GAIN] & 0xFC) | (DNC1GC[state->rcvr_mode] & 0x03);
  if (state->reg[MT2063_REG_DNC_GAIN] !=
      val)
   status |=
       mt2063_setreg(state,
       MT2063_REG_DNC_GAIN,
       val);

  val = (state->reg[MT2063_REG_VGA_GAIN] & 0xFC) | (DNC2GC[state->rcvr_mode] & 0x03);
  if (state->reg[MT2063_REG_VGA_GAIN] !=
      val)
   status |=
       mt2063_setreg(state,
       MT2063_REG_VGA_GAIN,
       val);

  val = (state->reg[MT2063_REG_RSVD_20] | 0x40);
  if (state->reg[MT2063_REG_RSVD_20] !=
      val)
   status |=
       mt2063_setreg(state,
       MT2063_REG_RSVD_20,
       val);

  break;
 default:
  break;
 }

 return status;
}
