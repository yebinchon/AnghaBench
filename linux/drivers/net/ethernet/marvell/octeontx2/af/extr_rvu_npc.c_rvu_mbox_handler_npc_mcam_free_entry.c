
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct rvu {TYPE_1__* hw; } ;
struct TYPE_4__ {scalar_t__ pcifunc; } ;
struct npc_mcam_free_entry_req {size_t entry; scalar_t__ all; TYPE_2__ hdr; } ;
struct npc_mcam {scalar_t__* entry2cntr_map; int lock; scalar_t__* entry2pfvf_map; } ;
struct msg_rsp {int dummy; } ;
struct TYPE_3__ {struct npc_mcam mcam; } ;


 int BLKTYPE_NPC ;
 scalar_t__ NPC_MCAM_INVALID_MAP ;
 int NPC_MCAM_INVALID_REQ ;
 int is_nixlf_attached (struct rvu*,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int npc_enable_mcam_entry (struct rvu*,struct npc_mcam*,int,size_t,int) ;
 int npc_mcam_clear_bit (struct npc_mcam*,size_t) ;
 int npc_mcam_free_all_entries (struct rvu*,struct npc_mcam*,int,scalar_t__) ;
 int npc_mcam_verify_entry (struct npc_mcam*,scalar_t__,size_t) ;
 int npc_unmap_mcam_entry_and_cntr (struct rvu*,struct npc_mcam*,int,size_t,scalar_t__) ;
 int rvu_get_blkaddr (struct rvu*,int ,int ) ;

int rvu_mbox_handler_npc_mcam_free_entry(struct rvu *rvu,
      struct npc_mcam_free_entry_req *req,
      struct msg_rsp *rsp)
{
 struct npc_mcam *mcam = &rvu->hw->mcam;
 u16 pcifunc = req->hdr.pcifunc;
 int blkaddr, rc = 0;
 u16 cntr;

 blkaddr = rvu_get_blkaddr(rvu, BLKTYPE_NPC, 0);
 if (blkaddr < 0)
  return NPC_MCAM_INVALID_REQ;


 if (!is_nixlf_attached(rvu, pcifunc))
  return NPC_MCAM_INVALID_REQ;

 mutex_lock(&mcam->lock);

 if (req->all)
  goto free_all;

 rc = npc_mcam_verify_entry(mcam, pcifunc, req->entry);
 if (rc)
  goto exit;

 mcam->entry2pfvf_map[req->entry] = 0;
 npc_mcam_clear_bit(mcam, req->entry);
 npc_enable_mcam_entry(rvu, mcam, blkaddr, req->entry, 0);


 cntr = mcam->entry2cntr_map[req->entry];
 if (cntr != NPC_MCAM_INVALID_MAP)
  npc_unmap_mcam_entry_and_cntr(rvu, mcam, blkaddr,
           req->entry, cntr);

 goto exit;

free_all:

 npc_mcam_free_all_entries(rvu, mcam, blkaddr, pcifunc);
exit:
 mutex_unlock(&mcam->lock);
 return rc;
}
