
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;


 int FIELD_GET (int,int ) ;
 int OP_BR_ADDR_HI ;
 int OP_BR_ADDR_LO ;
 int __bf_shf (int) ;

u16 br_get_offset(u64 instr)
{
 u16 addr_lo, addr_hi;

 addr_lo = FIELD_GET(OP_BR_ADDR_LO, instr);
 addr_hi = FIELD_GET(OP_BR_ADDR_HI, instr);

 return (addr_hi * ((OP_BR_ADDR_LO >> __bf_shf(OP_BR_ADDR_LO)) + 1)) |
  addr_lo;
}
