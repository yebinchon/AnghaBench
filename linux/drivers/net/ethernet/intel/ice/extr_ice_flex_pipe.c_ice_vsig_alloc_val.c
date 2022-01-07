
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u16 ;
struct ice_hw {int pf_id; TYPE_2__* blk; } ;
typedef enum ice_block { ____Placeholder_ice_block } ice_block ;
struct TYPE_6__ {int in_use; int prop_lst; } ;
struct TYPE_4__ {TYPE_3__* vsig_tbl; } ;
struct TYPE_5__ {TYPE_1__ xlt2; } ;


 size_t ICE_VSIG_IDX_M ;
 size_t ICE_VSIG_VALUE (size_t,int ) ;
 int INIT_LIST_HEAD (int *) ;

__attribute__((used)) static u16 ice_vsig_alloc_val(struct ice_hw *hw, enum ice_block blk, u16 vsig)
{
 u16 idx = vsig & ICE_VSIG_IDX_M;

 if (!hw->blk[blk].xlt2.vsig_tbl[idx].in_use) {
  INIT_LIST_HEAD(&hw->blk[blk].xlt2.vsig_tbl[idx].prop_lst);
  hw->blk[blk].xlt2.vsig_tbl[idx].in_use = 1;
 }

 return ICE_VSIG_VALUE(idx, hw->pf_id);
}
