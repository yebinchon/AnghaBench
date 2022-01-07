
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rvu {int dummy; } ;
struct npc_mcam {int banksize; int* entry2cntr_map; int * cntr_refcnt; } ;


 int BIT_ULL (int) ;
 int NPC_AF_MCAMEX_BANKX_STAT_ACT (int,int) ;
 int npc_get_bank (struct npc_mcam*,int) ;
 int rvu_write64 (struct rvu*,int,int ,int) ;

__attribute__((used)) static void npc_map_mcam_entry_and_cntr(struct rvu *rvu, struct npc_mcam *mcam,
     int blkaddr, u16 entry, u16 cntr)
{
 u16 index = entry & (mcam->banksize - 1);
 u16 bank = npc_get_bank(mcam, entry);


 mcam->entry2cntr_map[entry] = cntr;
 mcam->cntr_refcnt[cntr]++;

 rvu_write64(rvu, blkaddr,
      NPC_AF_MCAMEX_BANKX_STAT_ACT(index, bank),
      BIT_ULL(9) | cntr);
}
