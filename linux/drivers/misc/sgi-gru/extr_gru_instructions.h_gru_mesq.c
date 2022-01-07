
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gru_instruction {long baddr0; unsigned long nelem; } ;


 int CB_IMA (unsigned long) ;
 int IAA_RAM ;
 int OP_MESQ ;
 int XTYPE_CL ;
 int __opdword (int ,int ,int ,int ,int ,unsigned long,int ) ;
 int gru_start_instruction (struct gru_instruction*,int ) ;

__attribute__((used)) static inline void gru_mesq(void *cb, unsigned long queue,
  unsigned long tri0, unsigned long nelem,
  unsigned long hints)
{
 struct gru_instruction *ins = (void *)cb;

 ins->baddr0 = (long)queue;
 ins->nelem = nelem;
 gru_start_instruction(ins, __opdword(OP_MESQ, 0, XTYPE_CL, IAA_RAM, 0,
     tri0, CB_IMA(hints)));
}
