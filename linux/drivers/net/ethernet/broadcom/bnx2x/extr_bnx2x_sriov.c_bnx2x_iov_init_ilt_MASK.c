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
typedef  int u16 ;
struct hw_dma {int /*<<< orphan*/  size; int /*<<< orphan*/  mapping; int /*<<< orphan*/  addr; } ;
struct bnx2x_ilt {TYPE_1__* lines; } ;
struct bnx2x {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  size; int /*<<< orphan*/  page_mapping; int /*<<< orphan*/  page; } ;

/* Variables and functions */
 int BNX2X_VF_CIDS ; 
 struct bnx2x_ilt* FUNC0 (struct bnx2x*) ; 
 struct hw_dma* FUNC1 (struct bnx2x*,int) ; 
 int ILT_PAGE_CIDS ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*) ; 

int FUNC3(struct bnx2x *bp, u16 line)
{
	int i;
	struct bnx2x_ilt *ilt = FUNC0(bp);

	if (!FUNC2(bp))
		return line;

	/* set vfs ilt lines */
	for (i = 0; i < BNX2X_VF_CIDS/ILT_PAGE_CIDS; i++) {
		struct hw_dma *hw_cxt = FUNC1(bp, i);

		ilt->lines[line+i].page = hw_cxt->addr;
		ilt->lines[line+i].page_mapping = hw_cxt->mapping;
		ilt->lines[line+i].size = hw_cxt->size; /* doesn't matter */
	}
	return line + i;
}