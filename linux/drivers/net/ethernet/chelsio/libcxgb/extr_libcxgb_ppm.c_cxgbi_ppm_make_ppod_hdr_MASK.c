#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_2__ {int idx_clr_mask; } ;
struct cxgbi_ppm {TYPE_1__ tformat; } ;
struct cxgbi_pagepod_hdr {void* page_offset; void* max_offset; void* pgsz_tag_clr; scalar_t__ rsvd; void* vld_tid; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int PPOD_VALID_FLAG ; 
 void* FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,unsigned int,unsigned int,unsigned int) ; 

void FUNC3(struct cxgbi_ppm *ppm, u32 tag,
			     unsigned int tid, unsigned int offset,
			     unsigned int length,
			     struct cxgbi_pagepod_hdr *hdr)
{
	/* The ddp tag in pagepod should be with bit 31:30 set to 0.
	 * The ddp Tag on the wire should be with non-zero 31:30 to the peer
	 */
	tag &= 0x3FFFFFFF;

	hdr->vld_tid = FUNC1(PPOD_VALID_FLAG | FUNC0(tid));

	hdr->rsvd = 0;
	hdr->pgsz_tag_clr = FUNC1(tag & ppm->tformat.idx_clr_mask);
	hdr->max_offset = FUNC1(length);
	hdr->page_offset = FUNC1(offset);

	FUNC2("ippm: tag 0x%x, tid 0x%x, xfer %u, off %u.\n",
		 tag, tid, length, offset);
}