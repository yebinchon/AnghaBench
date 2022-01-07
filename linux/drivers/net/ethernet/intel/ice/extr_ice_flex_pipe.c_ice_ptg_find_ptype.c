
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u16 ;
struct ice_hw {TYPE_3__* blk; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;
typedef enum ice_block { ____Placeholder_ice_block } ice_block ;
struct TYPE_5__ {TYPE_1__* ptypes; } ;
struct TYPE_6__ {TYPE_2__ xlt1; } ;
struct TYPE_4__ {int ptg; } ;


 int ICE_ERR_PARAM ;
 size_t ICE_XLT1_CNT ;

__attribute__((used)) static enum ice_status
ice_ptg_find_ptype(struct ice_hw *hw, enum ice_block blk, u16 ptype, u8 *ptg)
{
 if (ptype >= ICE_XLT1_CNT || !ptg)
  return ICE_ERR_PARAM;

 *ptg = hw->blk[blk].xlt1.ptypes[ptype].ptg;
 return 0;
}
