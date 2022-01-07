
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;


 unsigned int PPOD_IDX_SHIFT ;

__attribute__((used)) static inline u32 cxgbi_ppm_make_ddp_tag(unsigned int hw_idx,
      unsigned char color)
{
 return (hw_idx << PPOD_IDX_SHIFT) | ((u32)color);
}
