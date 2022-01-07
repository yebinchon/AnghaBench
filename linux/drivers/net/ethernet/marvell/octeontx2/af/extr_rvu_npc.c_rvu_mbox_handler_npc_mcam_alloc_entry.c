
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct rvu {TYPE_1__* hw; } ;
struct npc_mcam_alloc_entry_rsp {scalar_t__ free_count; int entry; } ;
struct TYPE_4__ {int pcifunc; } ;
struct npc_mcam_alloc_entry_req {scalar_t__ priority; int ref_entry; scalar_t__ count; int contig; TYPE_2__ hdr; } ;
struct npc_mcam {int bmap_entries; } ;
struct TYPE_3__ {struct npc_mcam mcam; } ;


 int BLKTYPE_NPC ;
 scalar_t__ NPC_MAX_NONCONTIG_ENTRIES ;
 int NPC_MCAM_ALLOC_DENIED ;
 int NPC_MCAM_ENTRY_INVALID ;
 scalar_t__ NPC_MCAM_HIGHER_PRIO ;
 int NPC_MCAM_INVALID_REQ ;
 scalar_t__ NPC_MCAM_LOWER_PRIO ;
 int is_nixlf_attached (struct rvu*,int ) ;
 int npc_mcam_alloc_entries (struct npc_mcam*,int ,struct npc_mcam_alloc_entry_req*,struct npc_mcam_alloc_entry_rsp*) ;
 int rvu_get_blkaddr (struct rvu*,int ,int ) ;

int rvu_mbox_handler_npc_mcam_alloc_entry(struct rvu *rvu,
       struct npc_mcam_alloc_entry_req *req,
       struct npc_mcam_alloc_entry_rsp *rsp)
{
 struct npc_mcam *mcam = &rvu->hw->mcam;
 u16 pcifunc = req->hdr.pcifunc;
 int blkaddr;

 blkaddr = rvu_get_blkaddr(rvu, BLKTYPE_NPC, 0);
 if (blkaddr < 0)
  return NPC_MCAM_INVALID_REQ;

 rsp->entry = NPC_MCAM_ENTRY_INVALID;
 rsp->free_count = 0;


 if (req->priority && req->ref_entry >= mcam->bmap_entries)
  return NPC_MCAM_INVALID_REQ;




 if ((!req->ref_entry && req->priority == NPC_MCAM_HIGHER_PRIO) ||
     ((req->ref_entry == (mcam->bmap_entries - 1)) &&
      req->priority == NPC_MCAM_LOWER_PRIO))
  return NPC_MCAM_INVALID_REQ;




 if (!req->contig && req->count > NPC_MAX_NONCONTIG_ENTRIES)
  return NPC_MCAM_INVALID_REQ;


 if (!is_nixlf_attached(rvu, pcifunc))
  return NPC_MCAM_ALLOC_DENIED;

 return npc_mcam_alloc_entries(mcam, pcifunc, req, rsp);
}
