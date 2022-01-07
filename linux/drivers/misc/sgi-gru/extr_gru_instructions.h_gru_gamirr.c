
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gru_instruction {long baddr0; } ;


 int CB_IMA (unsigned long) ;
 int IAA_RAM ;
 int OP_GAMIRR ;
 int __opdword (int ,int,unsigned int,int ,int ,int ,int ) ;
 int gru_start_instruction (struct gru_instruction*,int ) ;

__attribute__((used)) static inline void gru_gamirr(void *cb, int exopc, unsigned long src,
  unsigned int xtype, unsigned long hints)
{
 struct gru_instruction *ins = (void *)cb;

 ins->baddr0 = (long)src;
 gru_start_instruction(ins, __opdword(OP_GAMIRR, exopc, xtype, IAA_RAM, 0,
     0, CB_IMA(hints)));
}
