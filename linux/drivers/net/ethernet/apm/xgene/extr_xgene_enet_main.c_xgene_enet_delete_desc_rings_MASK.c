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
struct xgene_enet_pdata {int txq_cnt; int rxq_cnt; struct xgene_enet_desc_ring** rx_ring; TYPE_1__* port_ops; struct xgene_enet_desc_ring** tx_ring; scalar_t__ cq_cnt; } ;
struct xgene_enet_desc_ring {struct xgene_enet_desc_ring* buf_pool; struct xgene_enet_desc_ring* page_pool; struct xgene_enet_desc_ring* cp_ring; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* clear ) (struct xgene_enet_pdata*,struct xgene_enet_desc_ring*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xgene_enet_pdata*,struct xgene_enet_desc_ring*) ; 
 int /*<<< orphan*/  FUNC1 (struct xgene_enet_pdata*,struct xgene_enet_desc_ring*) ; 
 int /*<<< orphan*/  FUNC2 (struct xgene_enet_pdata*,struct xgene_enet_desc_ring*) ; 
 int /*<<< orphan*/  FUNC3 (struct xgene_enet_desc_ring*) ; 
 int /*<<< orphan*/  FUNC4 (struct xgene_enet_desc_ring*) ; 
 int /*<<< orphan*/  FUNC5 (struct xgene_enet_desc_ring*) ; 

__attribute__((used)) static void FUNC6(struct xgene_enet_pdata *pdata)
{
	struct xgene_enet_desc_ring *buf_pool, *page_pool;
	struct xgene_enet_desc_ring *ring;
	int i;

	for (i = 0; i < pdata->txq_cnt; i++) {
		ring = pdata->tx_ring[i];
		if (ring) {
			FUNC5(ring);
			pdata->port_ops->clear(pdata, ring);
			if (pdata->cq_cnt)
				FUNC5(ring->cp_ring);
			pdata->tx_ring[i] = NULL;
		}

	}

	for (i = 0; i < pdata->rxq_cnt; i++) {
		ring = pdata->rx_ring[i];
		if (ring) {
			page_pool = ring->page_pool;
			if (page_pool) {
				FUNC4(page_pool);
				FUNC5(page_pool);
				pdata->port_ops->clear(pdata, page_pool);
			}

			buf_pool = ring->buf_pool;
			FUNC3(buf_pool);
			FUNC5(buf_pool);
			pdata->port_ops->clear(pdata, buf_pool);

			FUNC5(ring);
			pdata->rx_ring[i] = NULL;
		}

	}
}