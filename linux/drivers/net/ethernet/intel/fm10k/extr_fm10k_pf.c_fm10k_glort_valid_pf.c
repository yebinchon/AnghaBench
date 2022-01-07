
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int dglort_map; } ;
struct fm10k_hw {TYPE_1__ mac; } ;


 int FM10K_DGLORTMAP_MASK_SHIFT ;
 int FM10K_DGLORTMAP_NONE ;

bool fm10k_glort_valid_pf(struct fm10k_hw *hw, u16 glort)
{
 glort &= hw->mac.dglort_map >> FM10K_DGLORTMAP_MASK_SHIFT;

 return glort == (hw->mac.dglort_map & FM10K_DGLORTMAP_NONE);
}
