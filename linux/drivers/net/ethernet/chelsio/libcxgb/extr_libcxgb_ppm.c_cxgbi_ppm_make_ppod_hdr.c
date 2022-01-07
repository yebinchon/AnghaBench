
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int idx_clr_mask; } ;
struct cxgbi_ppm {TYPE_1__ tformat; } ;
struct cxgbi_pagepod_hdr {void* page_offset; void* max_offset; void* pgsz_tag_clr; scalar_t__ rsvd; void* vld_tid; } ;


 unsigned int PPOD_TID (unsigned int) ;
 unsigned int PPOD_VALID_FLAG ;
 void* htonl (unsigned int) ;
 int pr_debug (char*,int,unsigned int,unsigned int,unsigned int) ;

void cxgbi_ppm_make_ppod_hdr(struct cxgbi_ppm *ppm, u32 tag,
        unsigned int tid, unsigned int offset,
        unsigned int length,
        struct cxgbi_pagepod_hdr *hdr)
{



 tag &= 0x3FFFFFFF;

 hdr->vld_tid = htonl(PPOD_VALID_FLAG | PPOD_TID(tid));

 hdr->rsvd = 0;
 hdr->pgsz_tag_clr = htonl(tag & ppm->tformat.idx_clr_mask);
 hdr->max_offset = htonl(length);
 hdr->page_offset = htonl(offset);

 pr_debug("ippm: tag 0x%x, tid 0x%x, xfer %u, off %u.\n",
   tag, tid, length, offset);
}
