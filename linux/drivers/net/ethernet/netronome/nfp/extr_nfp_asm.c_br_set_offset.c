
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;


 int FIELD_PREP (int,int) ;
 int OP_BR_ADDR_HI ;
 int OP_BR_ADDR_LO ;
 int __bf_shf (int) ;

void br_set_offset(u64 *instr, u16 offset)
{
 u16 addr_lo, addr_hi;

 addr_lo = offset & (OP_BR_ADDR_LO >> __bf_shf(OP_BR_ADDR_LO));
 addr_hi = offset != addr_lo;
 *instr &= ~(OP_BR_ADDR_HI | OP_BR_ADDR_LO);
 *instr |= FIELD_PREP(OP_BR_ADDR_HI, addr_hi);
 *instr |= FIELD_PREP(OP_BR_ADDR_LO, addr_lo);
}
