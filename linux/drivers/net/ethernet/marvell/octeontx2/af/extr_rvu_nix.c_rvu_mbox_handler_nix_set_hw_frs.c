
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef scalar_t__ u16 ;
struct rvu_hwinfo {int cgx_links; int lbk_links; int lmac_per_cgx; int sdp_links; } ;
struct rvu {int * pf2cgxlmac_map; int rsrc_lock; struct rvu_hwinfo* hw; } ;
struct TYPE_4__ {int max; } ;
struct nix_txsch {int * pfvf_map; TYPE_2__ schq; } ;
struct nix_hw {struct nix_txsch* txsch; } ;
struct TYPE_3__ {scalar_t__ pcifunc; } ;
struct nix_frs_cfg {int maxlen; int minlen; scalar_t__ sdp_link; scalar_t__ update_minlen; int update_smq; TYPE_1__ hdr; } ;
struct msg_rsp {int dummy; } ;


 int BLKTYPE_NIX ;
 int CGX_FIFO_LEN ;
 int EINVAL ;
 int NIC_HW_MAX_FRS ;
 int NIC_HW_MIN_FRS ;
 int NIX_AF_ERR_AF_LF_INVALID ;
 int NIX_AF_ERR_FRS_INVALID ;
 int NIX_AF_ERR_RX_LINK_INVALID ;
 int NIX_AF_RX_LINKX_CFG (int) ;
 int NIX_AF_SMQX_CFG (int) ;
 int NIX_AF_TX_LINKX_EXPR_CREDIT (int) ;
 int NIX_AF_TX_LINKX_NORM_CREDIT (int) ;
 size_t NIX_TXSCH_LVL_SMQ ;
 scalar_t__ TXSCH_MAP_FUNC (int ) ;
 int cgx_get_lmac_cnt (int ) ;
 struct nix_hw* get_nix_hw (struct rvu_hwinfo*,int) ;
 scalar_t__ is_pf_cgxmapped (struct rvu*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nix_find_link_frs (struct rvu*,struct nix_frs_cfg*,scalar_t__) ;
 int rvu_cgx_pdata (int,struct rvu*) ;
 int rvu_get_blkaddr (struct rvu*,int ,scalar_t__) ;
 int rvu_get_cgx_lmac_id (int ,int*,int*) ;
 int rvu_get_pf (scalar_t__) ;
 int rvu_read64 (struct rvu*,int,int ) ;
 int rvu_write64 (struct rvu*,int,int ,int) ;

int rvu_mbox_handler_nix_set_hw_frs(struct rvu *rvu, struct nix_frs_cfg *req,
        struct msg_rsp *rsp)
{
 struct rvu_hwinfo *hw = rvu->hw;
 u16 pcifunc = req->hdr.pcifunc;
 int pf = rvu_get_pf(pcifunc);
 int blkaddr, schq, link = -1;
 struct nix_txsch *txsch;
 u64 cfg, lmac_fifo_len;
 struct nix_hw *nix_hw;
 u8 cgx = 0, lmac = 0;

 blkaddr = rvu_get_blkaddr(rvu, BLKTYPE_NIX, pcifunc);
 if (blkaddr < 0)
  return NIX_AF_ERR_AF_LF_INVALID;

 nix_hw = get_nix_hw(rvu->hw, blkaddr);
 if (!nix_hw)
  return -EINVAL;

 if (!req->sdp_link && req->maxlen > NIC_HW_MAX_FRS)
  return NIX_AF_ERR_FRS_INVALID;

 if (req->update_minlen && req->minlen < NIC_HW_MIN_FRS)
  return NIX_AF_ERR_FRS_INVALID;


 if (!req->update_smq)
  goto rx_frscfg;


 txsch = &nix_hw->txsch[NIX_TXSCH_LVL_SMQ];
 mutex_lock(&rvu->rsrc_lock);
 for (schq = 0; schq < txsch->schq.max; schq++) {
  if (TXSCH_MAP_FUNC(txsch->pfvf_map[schq]) != pcifunc)
   continue;
  cfg = rvu_read64(rvu, blkaddr, NIX_AF_SMQX_CFG(schq));
  cfg = (cfg & ~(0xFFFFULL << 8)) | ((u64)req->maxlen << 8);
  if (req->update_minlen)
   cfg = (cfg & ~0x7FULL) | ((u64)req->minlen & 0x7F);
  rvu_write64(rvu, blkaddr, NIX_AF_SMQX_CFG(schq), cfg);
 }
 mutex_unlock(&rvu->rsrc_lock);

rx_frscfg:

 if (req->sdp_link) {
  if (!hw->sdp_links)
   return NIX_AF_ERR_RX_LINK_INVALID;
  link = hw->cgx_links + hw->lbk_links;
  goto linkcfg;
 }


 if (is_pf_cgxmapped(rvu, pf)) {

  rvu_get_cgx_lmac_id(rvu->pf2cgxlmac_map[pf], &cgx, &lmac);
  link = (cgx * hw->lmac_per_cgx) + lmac;
 } else if (pf == 0) {

  link = hw->cgx_links;
 }

 if (link < 0)
  return NIX_AF_ERR_RX_LINK_INVALID;

 nix_find_link_frs(rvu, req, pcifunc);

linkcfg:
 cfg = rvu_read64(rvu, blkaddr, NIX_AF_RX_LINKX_CFG(link));
 cfg = (cfg & ~(0xFFFFULL << 16)) | ((u64)req->maxlen << 16);
 if (req->update_minlen)
  cfg = (cfg & ~0xFFFFULL) | req->minlen;
 rvu_write64(rvu, blkaddr, NIX_AF_RX_LINKX_CFG(link), cfg);

 if (req->sdp_link || pf == 0)
  return 0;


 lmac_fifo_len =
  CGX_FIFO_LEN / cgx_get_lmac_cnt(rvu_cgx_pdata(cgx, rvu));
 cfg = rvu_read64(rvu, blkaddr, NIX_AF_TX_LINKX_NORM_CREDIT(link));
 cfg &= ~(0xFFFFFULL << 12);
 cfg |= ((lmac_fifo_len - req->maxlen) / 16) << 12;
 rvu_write64(rvu, blkaddr, NIX_AF_TX_LINKX_NORM_CREDIT(link), cfg);
 rvu_write64(rvu, blkaddr, NIX_AF_TX_LINKX_EXPR_CREDIT(link), cfg);

 return 0;
}
