
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gru_instruction {long baddr0; int nelem; } ;


 int CB_IMA (unsigned long) ;
 int EOP_XR_CSWAP ;
 int IAA_RAM ;
 int OP_GAMXR ;
 int XTYPE_DW ;
 int __opdword (int ,int ,int ,int ,int ,int ,int ) ;
 int gru_start_instruction (struct gru_instruction*,int ) ;

__attribute__((used)) static inline void gru_gamxr(void *cb, unsigned long src,
  unsigned int tri0, unsigned long hints)
{
 struct gru_instruction *ins = (void *)cb;

 ins->baddr0 = (long)src;
 ins->nelem = 4;
 gru_start_instruction(ins, __opdword(OP_GAMXR, EOP_XR_CSWAP, XTYPE_DW,
     IAA_RAM, 0, 0, CB_IMA(hints)));
}
