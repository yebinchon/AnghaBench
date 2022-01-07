
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
typedef size_t u16 ;
struct rvu_hwinfo {int * block; } ;
struct rvu {int rsrc_lock; struct rvu_hwinfo* hw; } ;
struct TYPE_2__ {size_t pcifunc; } ;
struct nix_txschq_config {size_t lvl; int num_regs; int* reg; int* regval; TYPE_1__ hdr; } ;
struct nix_txsch {int lvl; int * pfvf_map; } ;
struct nix_hw {struct nix_txsch* txsch; } ;
struct msg_rsp {int dummy; } ;


 int BIT_ULL (int) ;
 int BLKTYPE_NIX ;
 int EINVAL ;
 int MAX_REGS_PER_MBOX_MSG ;
 int NIX_AF_ERR_AF_LF_INVALID ;
 int NIX_AF_INVAL_TXSCHQ_CFG ;
 int NIX_AF_SMQX_CFG (int ) ;
 int NIX_AF_SMQ_FLUSH_FAILED ;
 int NIX_AF_TL1X_GREEN_BYTES (int ) ;
 int NIX_AF_TL1X_SCHEDULE (int ) ;
 size_t NIX_TXSCHQ_TL1_CFG_DONE ;
 size_t NIX_TXSCH_LVL_CNT ;
 size_t NIX_TXSCH_LVL_TL1 ;
 size_t RVU_PFVF_FUNC_MASK ;
 size_t TXSCHQ_IDX (int,int ) ;
 int TXSCHQ_IDX_SHIFT ;
 int TXSCH_MAP (size_t,size_t) ;
 size_t TXSCH_MAP_FLAGS (int ) ;
 size_t TXSCH_MAP_FUNC (int ) ;
 struct nix_hw* get_nix_hw (struct rvu_hwinfo*,int) ;
 int is_txschq_config_valid (struct rvu*,size_t,int,int ,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nix_tl1_default_cfg (struct rvu*,size_t) ;
 int rvu_get_blkaddr (struct rvu*,int ,size_t) ;
 int rvu_get_lf (struct rvu*,int *,size_t,int ) ;
 int rvu_poll_reg (struct rvu*,int,int,int,int) ;
 int rvu_write64 (struct rvu*,int,int,int) ;

int rvu_mbox_handler_nix_txschq_cfg(struct rvu *rvu,
        struct nix_txschq_config *req,
        struct msg_rsp *rsp)
{
 u16 schq, pcifunc = req->hdr.pcifunc;
 struct rvu_hwinfo *hw = rvu->hw;
 u64 reg, regval, schq_regbase;
 struct nix_txsch *txsch;
 u16 map_func, map_flags;
 struct nix_hw *nix_hw;
 int blkaddr, idx, err;
 u32 *pfvf_map;
 int nixlf;

 if (req->lvl >= NIX_TXSCH_LVL_CNT ||
     req->num_regs > MAX_REGS_PER_MBOX_MSG)
  return NIX_AF_INVAL_TXSCHQ_CFG;

 blkaddr = rvu_get_blkaddr(rvu, BLKTYPE_NIX, pcifunc);
 if (blkaddr < 0)
  return NIX_AF_ERR_AF_LF_INVALID;

 nix_hw = get_nix_hw(rvu->hw, blkaddr);
 if (!nix_hw)
  return -EINVAL;

 nixlf = rvu_get_lf(rvu, &hw->block[blkaddr], pcifunc, 0);
 if (nixlf < 0)
  return NIX_AF_ERR_AF_LF_INVALID;

 txsch = &nix_hw->txsch[req->lvl];
 pfvf_map = txsch->pfvf_map;




 if (pcifunc & RVU_PFVF_FUNC_MASK &&
     req->lvl == NIX_TXSCH_LVL_TL1) {
  return nix_tl1_default_cfg(rvu, pcifunc);
 }

 for (idx = 0; idx < req->num_regs; idx++) {
  reg = req->reg[idx];
  regval = req->regval[idx];
  schq_regbase = reg & 0xFFFF;

  if (!is_txschq_config_valid(rvu, pcifunc, blkaddr,
         txsch->lvl, reg, regval))
   return NIX_AF_INVAL_TXSCHQ_CFG;


  if (schq_regbase == NIX_AF_SMQX_CFG(0)) {
   nixlf = rvu_get_lf(rvu, &hw->block[blkaddr],
        pcifunc, 0);
   regval &= ~(0x7FULL << 24);
   regval |= ((u64)nixlf << 24);
  }


  if (schq_regbase >= NIX_AF_TL1X_SCHEDULE(0) &&
      schq_regbase <= NIX_AF_TL1X_GREEN_BYTES(0)) {
   schq = TXSCHQ_IDX(reg, TXSCHQ_IDX_SHIFT);

   mutex_lock(&rvu->rsrc_lock);

   map_func = TXSCH_MAP_FUNC(pfvf_map[schq]);
   map_flags = TXSCH_MAP_FLAGS(pfvf_map[schq]);

   map_flags |= NIX_TXSCHQ_TL1_CFG_DONE;
   pfvf_map[schq] = TXSCH_MAP(map_func, map_flags);
   mutex_unlock(&rvu->rsrc_lock);
  }

  rvu_write64(rvu, blkaddr, reg, regval);


  if (schq_regbase == NIX_AF_SMQX_CFG(0) &&
      (regval & BIT_ULL(49))) {
   err = rvu_poll_reg(rvu, blkaddr,
        reg, BIT_ULL(49), 1);
   if (err)
    return NIX_AF_SMQ_FLUSH_FAILED;
  }
 }
 return 0;
}
