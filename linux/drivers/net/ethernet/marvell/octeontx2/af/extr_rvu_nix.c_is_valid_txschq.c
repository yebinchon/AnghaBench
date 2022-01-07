
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct rvu {int rsrc_lock; int hw; } ;
struct TYPE_2__ {size_t max; } ;
struct nix_txsch {int * pfvf_map; TYPE_1__ schq; } ;
struct nix_hw {struct nix_txsch* txsch; } ;


 int NIX_TXSCH_LVL_TL1 ;
 size_t TXSCH_MAP_FUNC (int ) ;
 struct nix_hw* get_nix_hw (int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ rvu_get_pf (size_t) ;

__attribute__((used)) static bool is_valid_txschq(struct rvu *rvu, int blkaddr,
       int lvl, u16 pcifunc, u16 schq)
{
 struct nix_txsch *txsch;
 struct nix_hw *nix_hw;
 u16 map_func;

 nix_hw = get_nix_hw(rvu->hw, blkaddr);
 if (!nix_hw)
  return 0;

 txsch = &nix_hw->txsch[lvl];

 if (schq >= txsch->schq.max)
  return 0;

 mutex_lock(&rvu->rsrc_lock);
 map_func = TXSCH_MAP_FUNC(txsch->pfvf_map[schq]);
 mutex_unlock(&rvu->rsrc_lock);


 if (lvl == NIX_TXSCH_LVL_TL1 &&
     rvu_get_pf(map_func) != rvu_get_pf(pcifunc))
  return 0;

 if (lvl != NIX_TXSCH_LVL_TL1 &&
     map_func != pcifunc)
  return 0;

 return 1;
}
