
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
struct rvu_pfvf {int nixlf; } ;
struct rvu {int rsrc_lock; int hw; } ;
struct nix_txsch_alloc_rsp {int* schq_contig; int* schq; size_t** schq_list; size_t** schq_contig_list; } ;
struct TYPE_2__ {size_t pcifunc; } ;
struct nix_txsch_alloc_req {int* schq_contig; int* schq; TYPE_1__ hdr; } ;
struct nix_txsch {int schq; int * pfvf_map; } ;
struct nix_hw {struct nix_txsch* txsch; } ;


 int BLKTYPE_NIX ;
 int EINVAL ;
 int MAX_TXSCHQ_PER_FUNC ;
 int NIX_AF_ERR_AF_LF_INVALID ;
 int NIX_AF_ERR_TLX_ALLOC_FAIL ;
 int NIX_TXSCH_LVL_CNT ;
 int NIX_TXSCH_LVL_TL1 ;
 int TXSCH_MAP (size_t,int ) ;
 struct nix_hw* get_nix_hw (int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nix_reset_tx_linkcfg (struct rvu*,int,int,size_t) ;
 int nix_reset_tx_shaping (struct rvu*,int,int,size_t) ;
 size_t rvu_alloc_rsrc (int *) ;
 size_t rvu_alloc_rsrc_contig (int *,int) ;
 int rvu_get_blkaddr (struct rvu*,int ,size_t) ;
 struct rvu_pfvf* rvu_get_pfvf (struct rvu*,size_t) ;
 scalar_t__ rvu_get_tl1_schqs (struct rvu*,int,size_t,size_t*,int*) ;
 int rvu_rsrc_check_contig (int *,int) ;
 int rvu_rsrc_free_count (int *) ;

int rvu_mbox_handler_nix_txsch_alloc(struct rvu *rvu,
         struct nix_txsch_alloc_req *req,
         struct nix_txsch_alloc_rsp *rsp)
{
 u16 pcifunc = req->hdr.pcifunc;
 struct nix_txsch *txsch;
 int lvl, idx, req_schq;
 struct rvu_pfvf *pfvf;
 struct nix_hw *nix_hw;
 int blkaddr, rc = 0;
 u32 *pfvf_map;
 u16 schq;

 pfvf = rvu_get_pfvf(rvu, pcifunc);
 blkaddr = rvu_get_blkaddr(rvu, BLKTYPE_NIX, pcifunc);
 if (!pfvf->nixlf || blkaddr < 0)
  return NIX_AF_ERR_AF_LF_INVALID;

 nix_hw = get_nix_hw(rvu->hw, blkaddr);
 if (!nix_hw)
  return -EINVAL;

 mutex_lock(&rvu->rsrc_lock);
 for (lvl = 0; lvl < NIX_TXSCH_LVL_CNT; lvl++) {
  txsch = &nix_hw->txsch[lvl];
  req_schq = req->schq_contig[lvl] + req->schq[lvl];
  pfvf_map = txsch->pfvf_map;

  if (!req_schq)
   continue;


  if (lvl == NIX_TXSCH_LVL_TL1) {
   if (req->schq_contig[lvl] ||
       req->schq[lvl] > 2 ||
       rvu_get_tl1_schqs(rvu, blkaddr,
           pcifunc, ((void*)0), ((void*)0)))
    goto err;
   continue;
  }


  if (req_schq > MAX_TXSCHQ_PER_FUNC)
   goto err;


  if (req->schq_contig[lvl] &&
      !rvu_rsrc_check_contig(&txsch->schq, req->schq_contig[lvl]))
   goto err;


  if (req_schq >= rvu_rsrc_free_count(&txsch->schq))
   goto err;
 }

 for (lvl = 0; lvl < NIX_TXSCH_LVL_CNT; lvl++) {
  txsch = &nix_hw->txsch[lvl];
  rsp->schq_contig[lvl] = req->schq_contig[lvl];
  pfvf_map = txsch->pfvf_map;
  rsp->schq[lvl] = req->schq[lvl];

  if (!req->schq[lvl] && !req->schq_contig[lvl])
   continue;






  if (lvl == NIX_TXSCH_LVL_TL1) {
   rsp->schq_contig[lvl] = 0;
   rvu_get_tl1_schqs(rvu, blkaddr, pcifunc,
       &rsp->schq_list[lvl][0],
       &rsp->schq[lvl]);
   continue;
  }


  if (req->schq_contig[lvl]) {
   schq = rvu_alloc_rsrc_contig(&txsch->schq,
           req->schq_contig[lvl]);

   for (idx = 0; idx < req->schq_contig[lvl]; idx++) {
    pfvf_map[schq] = TXSCH_MAP(pcifunc, 0);
    nix_reset_tx_linkcfg(rvu, blkaddr, lvl, schq);
    nix_reset_tx_shaping(rvu, blkaddr, lvl, schq);
    rsp->schq_contig_list[lvl][idx] = schq;
    schq++;
   }
  }


  for (idx = 0; idx < req->schq[lvl]; idx++) {
   schq = rvu_alloc_rsrc(&txsch->schq);
   pfvf_map[schq] = TXSCH_MAP(pcifunc, 0);
   nix_reset_tx_linkcfg(rvu, blkaddr, lvl, schq);
   nix_reset_tx_shaping(rvu, blkaddr, lvl, schq);
   rsp->schq_list[lvl][idx] = schq;
  }
 }
 goto exit;
err:
 rc = NIX_AF_ERR_TLX_ALLOC_FAIL;
exit:
 mutex_unlock(&rvu->rsrc_lock);
 return rc;
}
