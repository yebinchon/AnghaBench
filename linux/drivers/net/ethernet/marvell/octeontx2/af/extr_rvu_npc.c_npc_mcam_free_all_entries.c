
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct rvu {int dummy; } ;
struct npc_mcam {size_t bmap_entries; size_t* entry2pfvf_map; size_t* entry2cntr_map; } ;


 size_t NPC_MCAM_INVALID_MAP ;
 int npc_enable_mcam_entry (struct rvu*,struct npc_mcam*,int,size_t,int) ;
 int npc_mcam_clear_bit (struct npc_mcam*,size_t) ;
 int npc_unmap_mcam_entry_and_cntr (struct rvu*,struct npc_mcam*,int,size_t,size_t) ;

__attribute__((used)) static void npc_mcam_free_all_entries(struct rvu *rvu, struct npc_mcam *mcam,
          int blkaddr, u16 pcifunc)
{
 u16 index, cntr;


 for (index = 0; index < mcam->bmap_entries; index++) {
  if (mcam->entry2pfvf_map[index] == pcifunc) {
   mcam->entry2pfvf_map[index] = NPC_MCAM_INVALID_MAP;

   npc_mcam_clear_bit(mcam, index);

   npc_enable_mcam_entry(rvu, mcam, blkaddr, index, 0);


   cntr = mcam->entry2cntr_map[index];
   if (cntr != NPC_MCAM_INVALID_MAP)
    npc_unmap_mcam_entry_and_cntr(rvu, mcam,
             blkaddr, index,
             cntr);
  }
 }
}
