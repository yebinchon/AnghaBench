
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct rvu {TYPE_1__* hw; } ;
struct TYPE_4__ {int pcifunc; } ;
struct npc_mcam_ena_dis_entry_req {int entry; TYPE_2__ hdr; } ;
struct npc_mcam {int lock; } ;
struct msg_rsp {int dummy; } ;
struct TYPE_3__ {struct npc_mcam mcam; } ;


 int BLKTYPE_NPC ;
 int NPC_MCAM_INVALID_REQ ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int npc_enable_mcam_entry (struct rvu*,struct npc_mcam*,int,int ,int) ;
 int npc_mcam_verify_entry (struct npc_mcam*,int ,int ) ;
 int rvu_get_blkaddr (struct rvu*,int ,int ) ;

int rvu_mbox_handler_npc_mcam_dis_entry(struct rvu *rvu,
     struct npc_mcam_ena_dis_entry_req *req,
     struct msg_rsp *rsp)
{
 struct npc_mcam *mcam = &rvu->hw->mcam;
 u16 pcifunc = req->hdr.pcifunc;
 int blkaddr, rc;

 blkaddr = rvu_get_blkaddr(rvu, BLKTYPE_NPC, 0);
 if (blkaddr < 0)
  return NPC_MCAM_INVALID_REQ;

 mutex_lock(&mcam->lock);
 rc = npc_mcam_verify_entry(mcam, pcifunc, req->entry);
 mutex_unlock(&mcam->lock);
 if (rc)
  return rc;

 npc_enable_mcam_entry(rvu, mcam, blkaddr, req->entry, 0);

 return 0;
}
