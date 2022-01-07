
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* u16 ;
struct rvu_pfvf {int rxvlan; int rxvlan_index; } ;
struct rvu {TYPE_3__* hw; } ;
struct TYPE_8__ {void* pcifunc; } ;
struct npc_mcam_free_entry_req {int entry; TYPE_4__ hdr; } ;
struct npc_mcam_alloc_entry_rsp {int * entry_list; } ;
struct TYPE_6__ {void* pcifunc; } ;
struct npc_mcam_alloc_entry_req {int count; TYPE_2__ hdr; } ;
struct msg_rsp {int dummy; } ;
struct TYPE_5__ {void* pcifunc; } ;
struct msg_req {TYPE_1__ hdr; } ;
struct TYPE_7__ {int * block; } ;


 int BLKTYPE_NIX ;
 int NIX_AF_ERR_AF_LF_INVALID ;
 scalar_t__ is_afvf (void*) ;
 int rvu_get_blkaddr (struct rvu*,int ,void*) ;
 int rvu_get_lf (struct rvu*,int *,void*,int ) ;
 struct rvu_pfvf* rvu_get_pfvf (struct rvu*,void*) ;
 int rvu_mbox_handler_npc_mcam_alloc_entry (struct rvu*,struct npc_mcam_alloc_entry_req*,struct npc_mcam_alloc_entry_rsp*) ;
 int rvu_mbox_handler_npc_mcam_free_entry (struct rvu*,struct npc_mcam_free_entry_req*,struct msg_rsp*) ;
 int rvu_npc_update_rxvlan (struct rvu*,void*,int) ;

int rvu_mbox_handler_nix_rxvlan_alloc(struct rvu *rvu, struct msg_req *req,
          struct msg_rsp *rsp)
{
 struct npc_mcam_alloc_entry_req alloc_req = { };
 struct npc_mcam_alloc_entry_rsp alloc_rsp = { };
 struct npc_mcam_free_entry_req free_req = { };
 u16 pcifunc = req->hdr.pcifunc;
 int blkaddr, nixlf, err;
 struct rvu_pfvf *pfvf;




 if (is_afvf(pcifunc))
  return 0;

 pfvf = rvu_get_pfvf(rvu, pcifunc);
 if (pfvf->rxvlan)
  return 0;


 alloc_req.hdr.pcifunc = pcifunc;
 alloc_req.count = 1;

 err = rvu_mbox_handler_npc_mcam_alloc_entry(rvu, &alloc_req,
          &alloc_rsp);
 if (err)
  return err;


 blkaddr = rvu_get_blkaddr(rvu, BLKTYPE_NIX, pcifunc);
 if (blkaddr < 0) {
  err = NIX_AF_ERR_AF_LF_INVALID;
  goto free_entry;
 }

 nixlf = rvu_get_lf(rvu, &rvu->hw->block[blkaddr], pcifunc, 0);
 if (nixlf < 0) {
  err = NIX_AF_ERR_AF_LF_INVALID;
  goto free_entry;
 }

 pfvf->rxvlan_index = alloc_rsp.entry_list[0];

 pfvf->rxvlan = 1;

 err = rvu_npc_update_rxvlan(rvu, pcifunc, nixlf);
 if (err)
  goto free_entry;

 return 0;
free_entry:
 free_req.hdr.pcifunc = pcifunc;
 free_req.entry = alloc_rsp.entry_list[0];
 rvu_mbox_handler_npc_mcam_free_entry(rvu, &free_req, rsp);
 pfvf->rxvlan = 0;
 return err;
}
