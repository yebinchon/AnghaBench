
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u16 ;
struct rvu_hwinfo {int * block; } ;
struct rvu {int dev; int rsrc_lock; struct rvu_hwinfo* hw; } ;
struct TYPE_2__ {int max; } ;
struct nix_txsch {scalar_t__* pfvf_map; TYPE_1__ schq; } ;
struct nix_hw {struct nix_txsch* txsch; } ;


 int BIT_ULL (int) ;
 int BLKTYPE_NIX ;
 int EINVAL ;
 int NIX_AF_ERR_AF_LF_INVALID ;
 int NIX_AF_NDC_TX_SYNC ;
 int NIX_AF_SMQX_CFG (int) ;
 int NIX_TXSCH_LVL_CNT ;
 size_t NIX_TXSCH_LVL_SMQ ;
 int NIX_TXSCH_LVL_TL1 ;
 int NIX_TXSCH_LVL_TL2 ;
 int NIX_TXSCH_LVL_TL4 ;
 int TXSCH_MAP_FUNC (scalar_t__) ;
 int dev_err (int ,char*,int,...) ;
 struct nix_hw* get_nix_hw (struct rvu_hwinfo*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nix_reset_tx_linkcfg (struct rvu*,int,int,int) ;
 int rvu_free_rsrc (TYPE_1__*,int) ;
 int rvu_get_blkaddr (struct rvu*,int ,int ) ;
 int rvu_get_lf (struct rvu*,int *,int ,int ) ;
 int rvu_poll_reg (struct rvu*,int,int ,int,int) ;
 int rvu_read64 (struct rvu*,int,int ) ;
 int rvu_write64 (struct rvu*,int,int ,int) ;

__attribute__((used)) static int nix_txschq_free(struct rvu *rvu, u16 pcifunc)
{
 int blkaddr, nixlf, lvl, schq, err;
 struct rvu_hwinfo *hw = rvu->hw;
 struct nix_txsch *txsch;
 struct nix_hw *nix_hw;
 u64 cfg;

 blkaddr = rvu_get_blkaddr(rvu, BLKTYPE_NIX, pcifunc);
 if (blkaddr < 0)
  return NIX_AF_ERR_AF_LF_INVALID;

 nix_hw = get_nix_hw(rvu->hw, blkaddr);
 if (!nix_hw)
  return -EINVAL;

 nixlf = rvu_get_lf(rvu, &hw->block[blkaddr], pcifunc, 0);
 if (nixlf < 0)
  return NIX_AF_ERR_AF_LF_INVALID;


 mutex_lock(&rvu->rsrc_lock);
 for (lvl = NIX_TXSCH_LVL_TL4; lvl < NIX_TXSCH_LVL_CNT; lvl++) {
  if (lvl != NIX_TXSCH_LVL_TL2 && lvl != NIX_TXSCH_LVL_TL4)
   continue;

  txsch = &nix_hw->txsch[lvl];
  for (schq = 0; schq < txsch->schq.max; schq++) {
   if (TXSCH_MAP_FUNC(txsch->pfvf_map[schq]) != pcifunc)
    continue;
   nix_reset_tx_linkcfg(rvu, blkaddr, lvl, schq);
  }
 }


 txsch = &nix_hw->txsch[NIX_TXSCH_LVL_SMQ];
 for (schq = 0; schq < txsch->schq.max; schq++) {
  if (TXSCH_MAP_FUNC(txsch->pfvf_map[schq]) != pcifunc)
   continue;
  cfg = rvu_read64(rvu, blkaddr, NIX_AF_SMQX_CFG(schq));

  cfg |= BIT_ULL(50) | BIT_ULL(49);
  rvu_write64(rvu, blkaddr, NIX_AF_SMQX_CFG(schq), cfg);


  err = rvu_poll_reg(rvu, blkaddr,
       NIX_AF_SMQX_CFG(schq), BIT_ULL(49), 1);
  if (err) {
   dev_err(rvu->dev,
    "NIXLF%d: SMQ%d flush failed\n", nixlf, schq);
  }
 }


 for (lvl = 0; lvl < NIX_TXSCH_LVL_CNT; lvl++) {



  if (lvl == NIX_TXSCH_LVL_TL1)
   continue;

  txsch = &nix_hw->txsch[lvl];
  for (schq = 0; schq < txsch->schq.max; schq++) {
   if (TXSCH_MAP_FUNC(txsch->pfvf_map[schq]) != pcifunc)
    continue;
   rvu_free_rsrc(&txsch->schq, schq);
   txsch->pfvf_map[schq] = 0;
  }
 }
 mutex_unlock(&rvu->rsrc_lock);


 rvu_write64(rvu, blkaddr, NIX_AF_NDC_TX_SYNC, BIT_ULL(12) | nixlf);
 err = rvu_poll_reg(rvu, blkaddr, NIX_AF_NDC_TX_SYNC, BIT_ULL(12), 1);
 if (err)
  dev_err(rvu->dev, "NDC-TX sync failed for NIXLF %d\n", nixlf);

 return 0;
}
