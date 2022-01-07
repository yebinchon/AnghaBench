
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int OP_BR_BASE ;
 int OP_BR_BASE_MASK ;
 int OP_BR_BIT_BASE ;
 int OP_BR_BIT_BASE_MASK ;

__attribute__((used)) static inline bool nfp_is_br(u64 insn)
{
 return (insn & OP_BR_BASE_MASK) == OP_BR_BASE ||
        (insn & OP_BR_BIT_BASE_MASK) == OP_BR_BIT_BASE;
}
