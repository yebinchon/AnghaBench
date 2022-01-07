
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u16 ;
struct rvu {TYPE_1__* hw; } ;
struct npc_mcam_alloc_counter_rsp {int count; int cntr; int* cntr_list; } ;
struct TYPE_6__ {int pcifunc; } ;
struct npc_mcam_alloc_counter_req {int count; scalar_t__ contig; TYPE_2__ hdr; } ;
struct TYPE_7__ {int bmap; int max; } ;
struct npc_mcam {int* cntr2pfvf_map; int lock; TYPE_3__ counters; } ;
struct TYPE_5__ {struct npc_mcam mcam; } ;


 int BLKTYPE_NPC ;
 int NPC_MAX_NONCONTIG_COUNTERS ;
 int NPC_MCAM_ALLOC_FAILED ;
 int NPC_MCAM_INVALID_REQ ;
 int __set_bit (int,int ) ;
 int is_nixlf_attached (struct rvu*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int npc_mcam_find_zero_area (int ,int ,int ,int,int*) ;
 int rvu_alloc_rsrc (TYPE_3__*) ;
 int rvu_get_blkaddr (struct rvu*,int ,int ) ;
 int rvu_rsrc_free_count (TYPE_3__*) ;

int rvu_mbox_handler_npc_mcam_alloc_counter(struct rvu *rvu,
   struct npc_mcam_alloc_counter_req *req,
   struct npc_mcam_alloc_counter_rsp *rsp)
{
 struct npc_mcam *mcam = &rvu->hw->mcam;
 u16 pcifunc = req->hdr.pcifunc;
 u16 max_contig, cntr;
 int blkaddr, index;

 blkaddr = rvu_get_blkaddr(rvu, BLKTYPE_NPC, 0);
 if (blkaddr < 0)
  return NPC_MCAM_INVALID_REQ;


 if (!is_nixlf_attached(rvu, pcifunc))
  return NPC_MCAM_INVALID_REQ;




 if (!req->contig && req->count > NPC_MAX_NONCONTIG_COUNTERS)
  return NPC_MCAM_INVALID_REQ;

 mutex_lock(&mcam->lock);


 if (!rvu_rsrc_free_count(&mcam->counters)) {
  mutex_unlock(&mcam->lock);
  return NPC_MCAM_ALLOC_FAILED;
 }

 rsp->count = 0;

 if (req->contig) {



  index = npc_mcam_find_zero_area(mcam->counters.bmap,
      mcam->counters.max, 0,
      req->count, &max_contig);
  rsp->count = max_contig;
  rsp->cntr = index;
  for (cntr = index; cntr < (index + max_contig); cntr++) {
   __set_bit(cntr, mcam->counters.bmap);
   mcam->cntr2pfvf_map[cntr] = pcifunc;
  }
 } else {



  for (cntr = 0; cntr < req->count; cntr++) {
   index = rvu_alloc_rsrc(&mcam->counters);
   if (index < 0)
    break;
   rsp->cntr_list[cntr] = index;
   rsp->count++;
   mcam->cntr2pfvf_map[index] = pcifunc;
  }
 }

 mutex_unlock(&mcam->lock);
 return 0;
}
