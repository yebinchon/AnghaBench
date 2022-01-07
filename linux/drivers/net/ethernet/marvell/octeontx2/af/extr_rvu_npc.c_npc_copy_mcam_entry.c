
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u16 ;
struct rvu {int dummy; } ;
struct npc_mcam {int banksize; int banks_per_entry; } ;


 scalar_t__ NPC_AF_MCAMEX_BANKX_ACTION (int,int) ;
 scalar_t__ NPC_AF_MCAMEX_BANKX_CAMX_INTF (int,int,int ) ;
 scalar_t__ NPC_AF_MCAMEX_BANKX_CFG (int,int) ;
 scalar_t__ NPC_AF_MCAMEX_BANKX_TAG_ACT (int,int) ;
 int npc_get_bank (struct npc_mcam*,int) ;
 scalar_t__ rvu_read64 (struct rvu*,int,scalar_t__) ;
 int rvu_write64 (struct rvu*,int,scalar_t__,scalar_t__) ;

__attribute__((used)) static void npc_copy_mcam_entry(struct rvu *rvu, struct npc_mcam *mcam,
    int blkaddr, u16 src, u16 dest)
{
 int dbank = npc_get_bank(mcam, dest);
 int sbank = npc_get_bank(mcam, src);
 u64 cfg, sreg, dreg;
 int bank, i;

 src &= (mcam->banksize - 1);
 dest &= (mcam->banksize - 1);


 for (bank = 0; bank < mcam->banks_per_entry; bank++) {
  sreg = NPC_AF_MCAMEX_BANKX_CAMX_INTF(src, sbank + bank, 0);
  dreg = NPC_AF_MCAMEX_BANKX_CAMX_INTF(dest, dbank + bank, 0);
  for (i = 0; i < 6; i++) {
   cfg = rvu_read64(rvu, blkaddr, sreg + (i * 8));
   rvu_write64(rvu, blkaddr, dreg + (i * 8), cfg);
  }
 }


 cfg = rvu_read64(rvu, blkaddr,
    NPC_AF_MCAMEX_BANKX_ACTION(src, sbank));
 rvu_write64(rvu, blkaddr,
      NPC_AF_MCAMEX_BANKX_ACTION(dest, dbank), cfg);


 cfg = rvu_read64(rvu, blkaddr,
    NPC_AF_MCAMEX_BANKX_TAG_ACT(src, sbank));
 rvu_write64(rvu, blkaddr,
      NPC_AF_MCAMEX_BANKX_TAG_ACT(dest, dbank), cfg);


 cfg = rvu_read64(rvu, blkaddr,
    NPC_AF_MCAMEX_BANKX_CFG(src, sbank));
 rvu_write64(rvu, blkaddr,
      NPC_AF_MCAMEX_BANKX_CFG(dest, dbank), cfg);
}
