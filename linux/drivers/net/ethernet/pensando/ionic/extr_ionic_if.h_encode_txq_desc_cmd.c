
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;


 int IONIC_TXQ_DESC_ADDR_MASK ;
 int IONIC_TXQ_DESC_ADDR_SHIFT ;
 int IONIC_TXQ_DESC_FLAGS_MASK ;
 int IONIC_TXQ_DESC_FLAGS_SHIFT ;
 int IONIC_TXQ_DESC_NSGE_MASK ;
 int IONIC_TXQ_DESC_NSGE_SHIFT ;
 int IONIC_TXQ_DESC_OPCODE_MASK ;
 int IONIC_TXQ_DESC_OPCODE_SHIFT ;

__attribute__((used)) static inline u64 encode_txq_desc_cmd(u8 opcode, u8 flags,
          u8 nsge, u64 addr)
{
 u64 cmd;

 cmd = (opcode & IONIC_TXQ_DESC_OPCODE_MASK) << IONIC_TXQ_DESC_OPCODE_SHIFT;
 cmd |= (flags & IONIC_TXQ_DESC_FLAGS_MASK) << IONIC_TXQ_DESC_FLAGS_SHIFT;
 cmd |= (nsge & IONIC_TXQ_DESC_NSGE_MASK) << IONIC_TXQ_DESC_NSGE_SHIFT;
 cmd |= (addr & IONIC_TXQ_DESC_ADDR_MASK) << IONIC_TXQ_DESC_ADDR_SHIFT;

 return cmd;
}
