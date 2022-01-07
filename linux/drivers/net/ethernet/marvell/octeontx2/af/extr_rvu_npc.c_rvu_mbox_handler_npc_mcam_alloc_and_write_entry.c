
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u16 ;
struct rvu {TYPE_1__* hw; } ;
struct npc_mcam_alloc_entry_rsp {size_t entry; int count; } ;
struct TYPE_6__ {int pcifunc; } ;
struct npc_mcam_alloc_entry_req {int contig; int count; int ref_entry; int priority; TYPE_2__ hdr; } ;
struct npc_mcam_alloc_counter_rsp {size_t cntr; } ;
struct TYPE_7__ {int pcifunc; } ;
struct npc_mcam_alloc_counter_req {int contig; int count; TYPE_3__ hdr; } ;
struct npc_mcam_alloc_and_write_entry_rsp {size_t entry; size_t cntr; } ;
struct TYPE_8__ {int pcifunc; } ;
struct npc_mcam_alloc_and_write_entry_req {scalar_t__ alloc_cntr; int enable_entry; int entry_data; int intf; TYPE_4__ hdr; int ref_entry; int priority; } ;
struct npc_mcam {int lock; scalar_t__* entry2pfvf_map; } ;
struct TYPE_5__ {struct npc_mcam mcam; } ;


 int BLKTYPE_NPC ;
 int NIX_INTF_RX ;
 int NIX_INTF_TX ;
 int NPC_MCAM_ALLOC_FAILED ;
 size_t NPC_MCAM_ENTRY_INVALID ;
 int NPC_MCAM_INVALID_REQ ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int npc_config_mcam_entry (struct rvu*,struct npc_mcam*,int,size_t,int ,int *,int ) ;
 int npc_map_mcam_entry_and_cntr (struct rvu*,struct npc_mcam*,int,size_t,size_t) ;
 int npc_mcam_clear_bit (struct npc_mcam*,size_t) ;
 int rvu_get_blkaddr (struct rvu*,int ,int ) ;
 int rvu_mbox_handler_npc_mcam_alloc_counter (struct rvu*,struct npc_mcam_alloc_counter_req*,struct npc_mcam_alloc_counter_rsp*) ;
 int rvu_mbox_handler_npc_mcam_alloc_entry (struct rvu*,struct npc_mcam_alloc_entry_req*,struct npc_mcam_alloc_entry_rsp*) ;

int rvu_mbox_handler_npc_mcam_alloc_and_write_entry(struct rvu *rvu,
     struct npc_mcam_alloc_and_write_entry_req *req,
     struct npc_mcam_alloc_and_write_entry_rsp *rsp)
{
 struct npc_mcam_alloc_counter_req cntr_req;
 struct npc_mcam_alloc_counter_rsp cntr_rsp;
 struct npc_mcam_alloc_entry_req entry_req;
 struct npc_mcam_alloc_entry_rsp entry_rsp;
 struct npc_mcam *mcam = &rvu->hw->mcam;
 u16 entry = NPC_MCAM_ENTRY_INVALID;
 u16 cntr = NPC_MCAM_ENTRY_INVALID;
 int blkaddr, rc;

 blkaddr = rvu_get_blkaddr(rvu, BLKTYPE_NPC, 0);
 if (blkaddr < 0)
  return NPC_MCAM_INVALID_REQ;

 if (req->intf != NIX_INTF_RX && req->intf != NIX_INTF_TX)
  return NPC_MCAM_INVALID_REQ;


 entry_req.hdr.pcifunc = req->hdr.pcifunc;
 entry_req.contig = 1;
 entry_req.priority = req->priority;
 entry_req.ref_entry = req->ref_entry;
 entry_req.count = 1;

 rc = rvu_mbox_handler_npc_mcam_alloc_entry(rvu,
         &entry_req, &entry_rsp);
 if (rc)
  return rc;

 if (!entry_rsp.count)
  return NPC_MCAM_ALLOC_FAILED;

 entry = entry_rsp.entry;

 if (!req->alloc_cntr)
  goto write_entry;


 cntr_req.hdr.pcifunc = req->hdr.pcifunc;
 cntr_req.contig = 1;
 cntr_req.count = 1;

 rc = rvu_mbox_handler_npc_mcam_alloc_counter(rvu, &cntr_req, &cntr_rsp);
 if (rc) {

  mutex_lock(&mcam->lock);
  mcam->entry2pfvf_map[entry] = 0;
  npc_mcam_clear_bit(mcam, entry);
  mutex_unlock(&mcam->lock);
  return rc;
 }

 cntr = cntr_rsp.cntr;

write_entry:
 mutex_lock(&mcam->lock);
 npc_config_mcam_entry(rvu, mcam, blkaddr, entry, req->intf,
         &req->entry_data, req->enable_entry);

 if (req->alloc_cntr)
  npc_map_mcam_entry_and_cntr(rvu, mcam, blkaddr, entry, cntr);
 mutex_unlock(&mcam->lock);

 rsp->entry = entry;
 rsp->cntr = cntr;

 return 0;
}
