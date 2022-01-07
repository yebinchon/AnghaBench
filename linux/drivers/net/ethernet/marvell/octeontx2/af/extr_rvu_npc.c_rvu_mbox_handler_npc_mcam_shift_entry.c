
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u16 ;
struct rvu {TYPE_1__* hw; } ;
struct npc_mcam_shift_entry_rsp {size_t failed_entry_idx; } ;
struct TYPE_4__ {size_t pcifunc; } ;
struct npc_mcam_shift_entry_req {size_t shift_count; size_t* curr_entry; size_t* new_entry; TYPE_2__ hdr; } ;
struct npc_mcam {scalar_t__* entry2cntr_map; int lock; } ;
struct TYPE_3__ {struct npc_mcam mcam; } ;


 int BLKTYPE_NPC ;
 scalar_t__ NPC_MCAM_INVALID_MAP ;
 int NPC_MCAM_INVALID_REQ ;
 size_t NPC_MCAM_MAX_SHIFTS ;
 int NPC_MCAM_PERM_DENIED ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int npc_copy_mcam_entry (struct rvu*,struct npc_mcam*,int,size_t,size_t) ;
 int npc_enable_mcam_entry (struct rvu*,struct npc_mcam*,int,size_t,int) ;
 int npc_map_mcam_entry_and_cntr (struct rvu*,struct npc_mcam*,int,size_t,size_t) ;
 int npc_mcam_verify_entry (struct npc_mcam*,size_t,size_t) ;
 int npc_unmap_mcam_entry_and_cntr (struct rvu*,struct npc_mcam*,int,size_t,size_t) ;
 int rvu_get_blkaddr (struct rvu*,int ,int ) ;

int rvu_mbox_handler_npc_mcam_shift_entry(struct rvu *rvu,
       struct npc_mcam_shift_entry_req *req,
       struct npc_mcam_shift_entry_rsp *rsp)
{
 struct npc_mcam *mcam = &rvu->hw->mcam;
 u16 pcifunc = req->hdr.pcifunc;
 u16 old_entry, new_entry;
 u16 index, cntr;
 int blkaddr, rc;

 blkaddr = rvu_get_blkaddr(rvu, BLKTYPE_NPC, 0);
 if (blkaddr < 0)
  return NPC_MCAM_INVALID_REQ;

 if (req->shift_count > NPC_MCAM_MAX_SHIFTS)
  return NPC_MCAM_INVALID_REQ;

 mutex_lock(&mcam->lock);
 for (index = 0; index < req->shift_count; index++) {
  old_entry = req->curr_entry[index];
  new_entry = req->new_entry[index];




  rc = npc_mcam_verify_entry(mcam, pcifunc, old_entry);
  if (rc)
   break;

  rc = npc_mcam_verify_entry(mcam, pcifunc, new_entry);
  if (rc)
   break;


  if (mcam->entry2cntr_map[new_entry] != NPC_MCAM_INVALID_MAP) {
   rc = NPC_MCAM_PERM_DENIED;
   break;
  }


  npc_enable_mcam_entry(rvu, mcam, blkaddr, new_entry, 0);


  npc_copy_mcam_entry(rvu, mcam, blkaddr, old_entry, new_entry);


  cntr = mcam->entry2cntr_map[old_entry];
  if (cntr != NPC_MCAM_INVALID_MAP) {
   npc_unmap_mcam_entry_and_cntr(rvu, mcam, blkaddr,
            old_entry, cntr);
   npc_map_mcam_entry_and_cntr(rvu, mcam, blkaddr,
          new_entry, cntr);
  }


  npc_enable_mcam_entry(rvu, mcam, blkaddr, new_entry, 1);
  npc_enable_mcam_entry(rvu, mcam, blkaddr, old_entry, 0);
 }


 if (index != req->shift_count) {
  rc = NPC_MCAM_PERM_DENIED;
  rsp->failed_entry_idx = index;
 }

 mutex_unlock(&mcam->lock);
 return rc;
}
