
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rvu_block {int lookup_reg; int addr; } ;
struct rvu {int dummy; } ;


 unsigned long long rvu_read64 (struct rvu*,int ,int ) ;
 int rvu_write64 (struct rvu*,int ,int ,int) ;

__attribute__((used)) static int rvu_lookup_rsrc(struct rvu *rvu, struct rvu_block *block,
      int pcifunc, int slot)
{
 u64 val;

 val = ((u64)pcifunc << 24) | (slot << 16) | (1ULL << 13);
 rvu_write64(rvu, block->addr, block->lookup_reg, val);


 while (rvu_read64(rvu, block->addr, block->lookup_reg) & (1ULL << 13))
  ;

 val = rvu_read64(rvu, block->addr, block->lookup_reg);


 if (!(val & (1ULL << 12)))
  return -1;

 return (val & 0xFFF);
}
