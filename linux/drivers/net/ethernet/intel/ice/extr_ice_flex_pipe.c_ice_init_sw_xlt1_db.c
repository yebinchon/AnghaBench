
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef size_t u16 ;
struct ice_hw {TYPE_2__* blk; } ;
typedef enum ice_block { ____Placeholder_ice_block } ice_block ;
struct TYPE_3__ {size_t count; scalar_t__* t; } ;
struct TYPE_4__ {TYPE_1__ xlt1; } ;


 scalar_t__ ICE_DEFAULT_PTG ;
 int ice_ptg_add_mv_ptype (struct ice_hw*,int,size_t,scalar_t__) ;
 int ice_ptg_alloc_val (struct ice_hw*,int,scalar_t__) ;

__attribute__((used)) static void ice_init_sw_xlt1_db(struct ice_hw *hw, enum ice_block blk)
{
 u16 pt;

 for (pt = 0; pt < hw->blk[blk].xlt1.count; pt++) {
  u8 ptg;

  ptg = hw->blk[blk].xlt1.t[pt];
  if (ptg != ICE_DEFAULT_PTG) {
   ice_ptg_alloc_val(hw, blk, ptg);
   ice_ptg_add_mv_ptype(hw, blk, pt, ptg);
  }
 }
}
