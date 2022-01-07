
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvu {int dummy; } ;
struct npc_mcam {int banksize; int banks_per_entry; } ;


 int NPC_AF_MCAMEX_BANKX_CFG (int,int) ;
 int npc_get_bank (struct npc_mcam*,int) ;
 int rvu_write64 (struct rvu*,int,int ,int) ;

__attribute__((used)) static void npc_enable_mcam_entry(struct rvu *rvu, struct npc_mcam *mcam,
      int blkaddr, int index, bool enable)
{
 int bank = npc_get_bank(mcam, index);
 int actbank = bank;

 index &= (mcam->banksize - 1);
 for (; bank < (actbank + mcam->banks_per_entry); bank++) {
  rvu_write64(rvu, blkaddr,
       NPC_AF_MCAMEX_BANKX_CFG(index, bank),
       enable ? 1 : 0);
 }
}
