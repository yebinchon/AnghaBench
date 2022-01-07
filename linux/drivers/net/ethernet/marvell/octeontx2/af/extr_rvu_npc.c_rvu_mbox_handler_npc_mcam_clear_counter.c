
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rvu {TYPE_2__* hw; } ;
struct TYPE_3__ {int pcifunc; } ;
struct npc_mcam_oper_counter_req {int cntr; TYPE_1__ hdr; } ;
struct npc_mcam {int lock; } ;
struct msg_rsp {int dummy; } ;
struct TYPE_4__ {struct npc_mcam mcam; } ;


 int BLKTYPE_NPC ;
 int NPC_AF_MATCH_STATX (int ) ;
 int NPC_MCAM_INVALID_REQ ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int npc_mcam_verify_counter (struct npc_mcam*,int ,int ) ;
 int rvu_get_blkaddr (struct rvu*,int ,int ) ;
 int rvu_write64 (struct rvu*,int,int ,int) ;

int rvu_mbox_handler_npc_mcam_clear_counter(struct rvu *rvu,
  struct npc_mcam_oper_counter_req *req, struct msg_rsp *rsp)
{
 struct npc_mcam *mcam = &rvu->hw->mcam;
 int blkaddr, err;

 blkaddr = rvu_get_blkaddr(rvu, BLKTYPE_NPC, 0);
 if (blkaddr < 0)
  return NPC_MCAM_INVALID_REQ;

 mutex_lock(&mcam->lock);
 err = npc_mcam_verify_counter(mcam, req->hdr.pcifunc, req->cntr);
 mutex_unlock(&mcam->lock);
 if (err)
  return err;

 rvu_write64(rvu, blkaddr, NPC_AF_MATCH_STATX(req->cntr), 0x00);

 return 0;
}
