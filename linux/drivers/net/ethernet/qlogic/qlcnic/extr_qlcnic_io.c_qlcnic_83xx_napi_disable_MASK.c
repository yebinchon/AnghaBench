#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct qlcnic_recv_context {struct qlcnic_host_sds_ring* sds_rings; } ;
struct qlcnic_host_tx_ring {int /*<<< orphan*/  napi; } ;
struct qlcnic_host_sds_ring {int /*<<< orphan*/  napi; } ;
struct qlcnic_adapter {scalar_t__ is_up; int drv_sds_rings; int flags; int drv_tx_rings; struct qlcnic_host_tx_ring* tx_ring; struct qlcnic_recv_context* recv_ctx; } ;

/* Variables and functions */
 scalar_t__ QLCNIC_ADAPTER_UP_MAGIC ; 
 int QLCNIC_MSIX_ENABLED ; 
 int QLCNIC_TX_INTR_SHARED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_adapter*,struct qlcnic_host_sds_ring*) ; 
 int /*<<< orphan*/  FUNC3 (struct qlcnic_adapter*,struct qlcnic_host_tx_ring*) ; 

void FUNC4(struct qlcnic_adapter *adapter)
{
	int ring;
	struct qlcnic_host_sds_ring *sds_ring;
	struct qlcnic_recv_context *recv_ctx = adapter->recv_ctx;
	struct qlcnic_host_tx_ring *tx_ring;

	if (adapter->is_up != QLCNIC_ADAPTER_UP_MAGIC)
		return;

	for (ring = 0; ring < adapter->drv_sds_rings; ring++) {
		sds_ring = &recv_ctx->sds_rings[ring];
		if (adapter->flags & QLCNIC_MSIX_ENABLED)
			FUNC2(adapter, sds_ring);
		FUNC1(&sds_ring->napi);
		FUNC0(&sds_ring->napi);
	}

	if ((adapter->flags & QLCNIC_MSIX_ENABLED) &&
	    !(adapter->flags & QLCNIC_TX_INTR_SHARED)) {
		for (ring = 0; ring < adapter->drv_tx_rings; ring++) {
			tx_ring = &adapter->tx_ring[ring];
			FUNC3(adapter, tx_ring);
			FUNC1(&tx_ring->napi);
			FUNC0(&tx_ring->napi);
		}
	}
}