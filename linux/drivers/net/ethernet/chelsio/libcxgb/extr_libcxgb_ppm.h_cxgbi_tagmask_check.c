
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxgbi_tag_format {int free_bits; unsigned int rsvd_bits; unsigned int color_bits; unsigned int idx_bits; int no_ddp_mask; int idx_mask; int color_mask; int idx_clr_mask; int rsvd_mask; int * pgsz_order; } ;


 unsigned int PPOD_IDX_SHIFT ;
 unsigned int fls (unsigned int) ;
 int pr_info (char*,unsigned int,unsigned int,int,unsigned int,int,int,int ,int ,int ,int ) ;

__attribute__((used)) static inline void cxgbi_tagmask_check(unsigned int tagmask,
           struct cxgbi_tag_format *tformat)
{
 unsigned int bits = fls(tagmask);


 tformat->free_bits = 32 - 2 - bits;
 tformat->rsvd_bits = bits;
 tformat->color_bits = PPOD_IDX_SHIFT;
 tformat->idx_bits = bits - 1 - PPOD_IDX_SHIFT;
 tformat->no_ddp_mask = 1 << (bits - 1);
 tformat->idx_mask = (1 << tformat->idx_bits) - 1;
 tformat->color_mask = (1 << PPOD_IDX_SHIFT) - 1;
 tformat->idx_clr_mask = (1 << (bits - 1)) - 1;
 tformat->rsvd_mask = (1 << bits) - 1;

 pr_info("ippm: tagmask 0x%x, rsvd %u=%u+%u+1, mask 0x%x,0x%x, "
  "pg %u,%u,%u,%u.\n",
  tagmask, tformat->rsvd_bits, tformat->idx_bits,
  tformat->color_bits, tformat->no_ddp_mask, tformat->rsvd_mask,
  tformat->pgsz_order[0], tformat->pgsz_order[1],
  tformat->pgsz_order[2], tformat->pgsz_order[3]);
}
