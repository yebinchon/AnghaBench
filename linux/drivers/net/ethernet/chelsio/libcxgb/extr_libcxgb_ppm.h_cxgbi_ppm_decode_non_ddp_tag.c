
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct cxgbi_tag_format {unsigned int idx_bits; unsigned int color_bits; unsigned int idx_clr_mask; unsigned int rsvd_bits; } ;
struct cxgbi_ppm {struct cxgbi_tag_format tformat; } ;



__attribute__((used)) static inline u32 cxgbi_ppm_decode_non_ddp_tag(struct cxgbi_ppm *ppm,
            u32 tag)
{
 struct cxgbi_tag_format *tformat = &ppm->tformat;
 unsigned int shift = tformat->idx_bits + tformat->color_bits;
 u32 lower = tag & tformat->idx_clr_mask;
 u32 upper = (tag >> tformat->rsvd_bits) << shift;

 return upper | lower;
}
