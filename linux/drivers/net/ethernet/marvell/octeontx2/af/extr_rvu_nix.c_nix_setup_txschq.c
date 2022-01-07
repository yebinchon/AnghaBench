
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct rvu {int dev; } ;
struct TYPE_2__ {int max; } ;
struct nix_txsch {int lvl; TYPE_1__ schq; int pfvf_map; } ;
struct nix_hw {struct nix_txsch* txsch; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int NIX_AF_MDQ_CONST ;
 int NIX_AF_TL1_CONST ;
 int NIX_AF_TL2_CONST ;
 int NIX_AF_TL3_CONST ;
 int NIX_AF_TL4_CONST ;
 int NIX_TXSCH_LVL_CNT ;





 int U8_MAX ;
 int devm_kcalloc (int ,int,int,int ) ;
 int memset (int ,int ,int) ;
 int rvu_alloc_bitmap (TYPE_1__*) ;
 int rvu_read64 (struct rvu*,int,int) ;

__attribute__((used)) static int nix_setup_txschq(struct rvu *rvu, struct nix_hw *nix_hw, int blkaddr)
{
 struct nix_txsch *txsch;
 u64 cfg, reg;
 int err, lvl;




 for (lvl = 0; lvl < NIX_TXSCH_LVL_CNT; lvl++) {
  txsch = &nix_hw->txsch[lvl];
  txsch->lvl = lvl;
  switch (lvl) {
  case 132:
   reg = NIX_AF_MDQ_CONST;
   break;
  case 128:
   reg = NIX_AF_TL4_CONST;
   break;
  case 129:
   reg = NIX_AF_TL3_CONST;
   break;
  case 130:
   reg = NIX_AF_TL2_CONST;
   break;
  case 131:
   reg = NIX_AF_TL1_CONST;
   break;
  }
  cfg = rvu_read64(rvu, blkaddr, reg);
  txsch->schq.max = cfg & 0xFFFF;
  err = rvu_alloc_bitmap(&txsch->schq);
  if (err)
   return err;




  txsch->pfvf_map = devm_kcalloc(rvu->dev, txsch->schq.max,
            sizeof(u32), GFP_KERNEL);
  if (!txsch->pfvf_map)
   return -ENOMEM;
  memset(txsch->pfvf_map, U8_MAX, txsch->schq.max * sizeof(u32));
 }
 return 0;
}
