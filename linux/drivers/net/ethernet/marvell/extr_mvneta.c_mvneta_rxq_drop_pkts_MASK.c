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
typedef  size_t u8 ;
struct mvneta_rx_queue {int size; void** buf_virt_addr; struct mvneta_rx_desc* descs; } ;
struct mvneta_rx_desc {int /*<<< orphan*/  buf_phys_addr; } ;
struct mvneta_port {TYPE_2__* dev; TYPE_3__* bm_priv; } ;
struct mvneta_bm_pool {int dummy; } ;
struct TYPE_6__ {struct mvneta_bm_pool* bm_pools; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct TYPE_5__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 size_t FUNC0 (struct mvneta_rx_desc*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,struct mvneta_bm_pool*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mvneta_port*,struct mvneta_rx_queue*) ; 
 int /*<<< orphan*/  FUNC5 (struct mvneta_port*,struct mvneta_rx_queue*,int,int) ; 
 struct mvneta_rx_desc* FUNC6 (struct mvneta_rx_queue*) ; 

__attribute__((used)) static void FUNC7(struct mvneta_port *pp,
				 struct mvneta_rx_queue *rxq)
{
	int rx_done, i;

	rx_done = FUNC4(pp, rxq);
	if (rx_done)
		FUNC5(pp, rxq, rx_done, rx_done);

	if (pp->bm_priv) {
		for (i = 0; i < rx_done; i++) {
			struct mvneta_rx_desc *rx_desc =
						  FUNC6(rxq);
			u8 pool_id = FUNC0(rx_desc);
			struct mvneta_bm_pool *bm_pool;

			bm_pool = &pp->bm_priv->bm_pools[pool_id];
			/* Return dropped buffer to the pool */
			FUNC3(pp->bm_priv, bm_pool,
					      rx_desc->buf_phys_addr);
		}
		return;
	}

	for (i = 0; i < rxq->size; i++) {
		struct mvneta_rx_desc *rx_desc = rxq->descs + i;
		void *data = rxq->buf_virt_addr[i];
		if (!data || !(rx_desc->buf_phys_addr))
			continue;

		FUNC2(pp->dev->dev.parent, rx_desc->buf_phys_addr,
			       PAGE_SIZE, DMA_FROM_DEVICE);
		FUNC1(data);
	}
}