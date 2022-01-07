
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct rvu {int dummy; } ;
struct npc_mcam {int banksize; int banks_per_entry; } ;
struct mcam_entry {int action; int vtag_action; } ;


 int NPC_AF_MCAMEX_BANKX_ACTION (int,int) ;
 int NPC_AF_MCAMEX_BANKX_CAMX_INTF (int,int,int) ;
 int NPC_AF_MCAMEX_BANKX_CAMX_W0 (int,int,int) ;
 int NPC_AF_MCAMEX_BANKX_CAMX_W1 (int,int,int) ;
 int NPC_AF_MCAMEX_BANKX_TAG_ACT (int,int) ;
 int npc_enable_mcam_entry (struct rvu*,struct npc_mcam*,int,int,int) ;
 int npc_get_bank (struct npc_mcam*,int) ;
 int npc_get_keyword (struct mcam_entry*,int,int*,int*) ;
 int rvu_write64 (struct rvu*,int,int ,int) ;

__attribute__((used)) static void npc_config_mcam_entry(struct rvu *rvu, struct npc_mcam *mcam,
      int blkaddr, int index, u8 intf,
      struct mcam_entry *entry, bool enable)
{
 int bank = npc_get_bank(mcam, index);
 int kw = 0, actbank, actindex;
 u64 cam0, cam1;

 actbank = bank;
 actindex = index;
 index &= (mcam->banksize - 1);







 for (; bank < (actbank + mcam->banks_per_entry); bank++, kw = kw + 2) {

  rvu_write64(rvu, blkaddr,
       NPC_AF_MCAMEX_BANKX_CAMX_INTF(index, bank, 1),
       intf);
  rvu_write64(rvu, blkaddr,
       NPC_AF_MCAMEX_BANKX_CAMX_INTF(index, bank, 0),
       ~intf & 0x3);


  npc_get_keyword(entry, kw, &cam0, &cam1);
  rvu_write64(rvu, blkaddr,
       NPC_AF_MCAMEX_BANKX_CAMX_W0(index, bank, 1), cam1);
  rvu_write64(rvu, blkaddr,
       NPC_AF_MCAMEX_BANKX_CAMX_W0(index, bank, 0), cam0);

  npc_get_keyword(entry, kw + 1, &cam0, &cam1);
  rvu_write64(rvu, blkaddr,
       NPC_AF_MCAMEX_BANKX_CAMX_W1(index, bank, 1), cam1);
  rvu_write64(rvu, blkaddr,
       NPC_AF_MCAMEX_BANKX_CAMX_W1(index, bank, 0), cam0);
 }


 rvu_write64(rvu, blkaddr,
      NPC_AF_MCAMEX_BANKX_ACTION(index, actbank), entry->action);


 rvu_write64(rvu, blkaddr, NPC_AF_MCAMEX_BANKX_TAG_ACT(index, actbank),
      entry->vtag_action);


 if (enable)
  npc_enable_mcam_entry(rvu, mcam, blkaddr, actindex, 1);
 else
  npc_enable_mcam_entry(rvu, mcam, blkaddr, actindex, 0);
}
