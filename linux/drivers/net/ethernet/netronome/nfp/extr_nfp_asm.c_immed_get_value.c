
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;


 int FIELD_GET (int ,int ) ;
 int OP_IMMED_A_SRC ;
 int OP_IMMED_B_SRC ;
 int OP_IMMED_IMM ;
 int immed_can_modify (int ) ;
 int unreg_is_imm (int) ;

u16 immed_get_value(u64 instr)
{
 u16 reg;

 if (!immed_can_modify(instr))
  return 0;

 reg = FIELD_GET(OP_IMMED_A_SRC, instr);
 if (!unreg_is_imm(reg))
  reg = FIELD_GET(OP_IMMED_B_SRC, instr);

 return (reg & 0xff) | FIELD_GET(OP_IMMED_IMM, instr) << 8;
}
