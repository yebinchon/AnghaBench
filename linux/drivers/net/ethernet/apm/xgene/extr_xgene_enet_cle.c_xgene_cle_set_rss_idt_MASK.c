#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct xgene_enet_pdata {int rxq_cnt; int /*<<< orphan*/  cle; TYPE_3__** rx_ring; } ;
struct TYPE_6__ {TYPE_2__* page_pool; TYPE_1__* buf_pool; } ;
struct TYPE_5__ {int /*<<< orphan*/  id; } ;
struct TYPE_4__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLE_CMD_WR ; 
 int /*<<< orphan*/  RSS_IDT ; 
 int XGENE_CLE_IDT_ENTRIES ; 
 int FUNC0 (int /*<<< orphan*/ *,size_t*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xgene_enet_pdata*,size_t,size_t,size_t,size_t*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 size_t FUNC3 (TYPE_3__*) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct xgene_enet_pdata *pdata)
{
	u32 fpsel, dstqid, nfpsel, idt_reg, idx;
	int i, ret = 0;
	u16 pool_id;

	for (i = 0; i < XGENE_CLE_IDT_ENTRIES; i++) {
		idx = i % pdata->rxq_cnt;
		pool_id = pdata->rx_ring[idx]->buf_pool->id;
		fpsel = FUNC4(pool_id);
		dstqid = FUNC3(pdata->rx_ring[idx]);
		nfpsel = 0;
		if (pdata->rx_ring[idx]->page_pool) {
			pool_id = pdata->rx_ring[idx]->page_pool->id;
			nfpsel = FUNC4(pool_id);
		}

		idt_reg = 0;
		FUNC1(pdata, dstqid, fpsel, nfpsel, &idt_reg);
		ret = FUNC0(&pdata->cle, &idt_reg, 1, i,
					RSS_IDT, CLE_CMD_WR);
		if (ret)
			return ret;
	}

	ret = FUNC2(&pdata->cle);
	if (ret)
		return ret;

	return 0;
}