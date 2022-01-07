
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int idx_mask; } ;
struct cxgbi_ppm {int base_idx; TYPE_1__ tformat; } ;


 int PPOD_IDX_SHIFT ;

__attribute__((used)) static inline u32 cxgbi_ppm_ddp_tag_get_idx(struct cxgbi_ppm *ppm,
         u32 ddp_tag)
{
 u32 hw_idx = (ddp_tag >> PPOD_IDX_SHIFT) &
   ppm->tformat.idx_mask;

 return hw_idx - ppm->base_idx;
}
