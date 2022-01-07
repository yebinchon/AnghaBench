
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rvu_hwinfo {struct rvu_block* block; } ;
struct rvu_block {int aq; } ;
struct rvu {int dev; struct rvu_hwinfo* hw; } ;
struct TYPE_2__ {int bmap; } ;
struct nix_txsch {TYPE_1__ schq; } ;
struct nix_mcast {int mce_lock; int mcast_buf; int mce_ctx; } ;
struct nix_hw {struct nix_mcast mcast; struct nix_txsch* txsch; } ;


 int BLKADDR_NIX0 ;
 int BLKTYPE_NIX ;
 int NIX_TXSCH_LVL_CNT ;
 struct nix_hw* get_nix_hw (struct rvu_hwinfo*,int) ;
 int kfree (int ) ;
 int mutex_destroy (int *) ;
 int qmem_free (int ,int ) ;
 int rvu_aq_free (struct rvu*,int ) ;
 int rvu_get_blkaddr (struct rvu*,int ,int ) ;

void rvu_nix_freemem(struct rvu *rvu)
{
 struct rvu_hwinfo *hw = rvu->hw;
 struct rvu_block *block;
 struct nix_txsch *txsch;
 struct nix_mcast *mcast;
 struct nix_hw *nix_hw;
 int blkaddr, lvl;

 blkaddr = rvu_get_blkaddr(rvu, BLKTYPE_NIX, 0);
 if (blkaddr < 0)
  return;

 block = &hw->block[blkaddr];
 rvu_aq_free(rvu, block->aq);

 if (blkaddr == BLKADDR_NIX0) {
  nix_hw = get_nix_hw(rvu->hw, blkaddr);
  if (!nix_hw)
   return;

  for (lvl = 0; lvl < NIX_TXSCH_LVL_CNT; lvl++) {
   txsch = &nix_hw->txsch[lvl];
   kfree(txsch->schq.bmap);
  }

  mcast = &nix_hw->mcast;
  qmem_free(rvu->dev, mcast->mce_ctx);
  qmem_free(rvu->dev, mcast->mcast_buf);
  mutex_destroy(&mcast->mce_lock);
 }
}
