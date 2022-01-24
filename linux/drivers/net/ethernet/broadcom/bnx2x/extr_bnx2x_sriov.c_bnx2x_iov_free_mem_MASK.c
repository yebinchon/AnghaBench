#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct hw_dma {int /*<<< orphan*/  size; int /*<<< orphan*/  mapping; int /*<<< orphan*/  addr; } ;
struct bnx2x {TYPE_1__* vfdb; } ;
struct TYPE_7__ {int /*<<< orphan*/  size; int /*<<< orphan*/  mapping; int /*<<< orphan*/  addr; } ;
struct TYPE_10__ {TYPE_2__ sp_dma; } ;
struct TYPE_9__ {int /*<<< orphan*/  size; int /*<<< orphan*/  mapping; int /*<<< orphan*/  addr; } ;
struct TYPE_8__ {int /*<<< orphan*/  size; int /*<<< orphan*/  mapping; int /*<<< orphan*/  addr; } ;
struct TYPE_6__ {struct hw_dma* context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int BNX2X_VF_CIDS ; 
 TYPE_5__* FUNC1 (struct bnx2x*) ; 
 TYPE_4__* FUNC2 (struct bnx2x*) ; 
 TYPE_3__* FUNC3 (struct bnx2x*) ; 
 int ILT_PAGE_CIDS ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*) ; 

void FUNC5(struct bnx2x *bp)
{
	int i;

	if (!FUNC4(bp))
		return;

	/* free vfs hw contexts */
	for (i = 0; i < BNX2X_VF_CIDS/ILT_PAGE_CIDS; i++) {
		struct hw_dma *cxt = &bp->vfdb->context[i];
		FUNC0(cxt->addr, cxt->mapping, cxt->size);
	}

	FUNC0(FUNC1(bp)->sp_dma.addr,
		       FUNC1(bp)->sp_dma.mapping,
		       FUNC1(bp)->sp_dma.size);

	FUNC0(FUNC3(bp)->addr,
		       FUNC3(bp)->mapping,
		       FUNC3(bp)->size);

	FUNC0(FUNC2(bp)->addr,
		       FUNC2(bp)->mapping,
		       FUNC2(bp)->size);
}