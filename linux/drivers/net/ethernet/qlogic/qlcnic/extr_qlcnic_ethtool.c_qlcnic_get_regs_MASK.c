#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct qlcnic_recv_context {struct qlcnic_host_sds_ring* sds_rings; struct qlcnic_host_rds_ring* rds_rings; } ;
struct qlcnic_host_tx_ring {int sw_consumer; int producer; scalar_t__ crb_intr_mask; scalar_t__ crb_cmd_producer; int /*<<< orphan*/ * hw_consumer; } ;
struct qlcnic_host_sds_ring {int consumer; scalar_t__ crb_intr_mask; scalar_t__ crb_sts_consumer; } ;
struct qlcnic_host_rds_ring {int producer; scalar_t__ crb_rcv_producer; } ;
struct qlcnic_adapter {int drv_tx_rings; int max_rds_rings; int drv_sds_rings; struct qlcnic_host_tx_ring* tx_ring; int /*<<< orphan*/  state; TYPE_2__* ahw; TYPE_1__* pdev; struct qlcnic_recv_context* recv_ctx; } ;
struct net_device {int dummy; } ;
struct ethtool_regs {int version; } ;
struct TYPE_4__ {int revision_id; int capabilities; int max_vnic_func; } ;
struct TYPE_3__ {int device; } ;

/* Variables and functions */
 int QLCNIC_DEV_INFO_SIZE ; 
 int QLCNIC_ETHTOOL_REGS_VER ; 
 int QLCNIC_MGMT_API_VERSION ; 
 int QLCNIC_TX_INTR_NOT_CONFIGURED ; 
 int QLC_83XX_ESWITCH_CAPABILITY ; 
 int /*<<< orphan*/  __QLCNIC_DEV_UP ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct qlcnic_adapter* FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct qlcnic_adapter*) ; 
 int FUNC4 (struct qlcnic_adapter*,int*) ; 
 int FUNC5 (struct qlcnic_adapter*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(struct net_device *dev, struct ethtool_regs *regs, void *p)
{
	struct qlcnic_adapter *adapter = FUNC2(dev);
	struct qlcnic_recv_context *recv_ctx = adapter->recv_ctx;
	struct qlcnic_host_sds_ring *sds_ring;
	struct qlcnic_host_rds_ring *rds_rings;
	struct qlcnic_host_tx_ring *tx_ring;
	u32 *regs_buff = p;
	int ring, i = 0;

	FUNC1(p, 0, FUNC6(dev));

	regs->version = (QLCNIC_ETHTOOL_REGS_VER << 24) |
		(adapter->ahw->revision_id << 16) | (adapter->pdev)->device;

	regs_buff[0] = (0xcafe0000 | (QLCNIC_DEV_INFO_SIZE & 0xffff));
	regs_buff[1] = QLCNIC_MGMT_API_VERSION;

	if (adapter->ahw->capabilities & QLC_83XX_ESWITCH_CAPABILITY)
		regs_buff[2] = adapter->ahw->max_vnic_func;

	if (FUNC3(adapter))
		i = FUNC4(adapter, regs_buff);
	else
		i = FUNC5(adapter, regs_buff);

	if (!FUNC8(__QLCNIC_DEV_UP, &adapter->state))
		return;

	/* Marker btw regs and TX ring count */
	regs_buff[i++] = 0xFFEFCDAB;

	regs_buff[i++] = adapter->drv_tx_rings; /* No. of TX ring */
	for (ring = 0; ring < adapter->drv_tx_rings; ring++) {
		tx_ring = &adapter->tx_ring[ring];
		regs_buff[i++] = FUNC0(*(tx_ring->hw_consumer));
		regs_buff[i++] = tx_ring->sw_consumer;
		regs_buff[i++] = FUNC7(tx_ring->crb_cmd_producer);
		regs_buff[i++] = tx_ring->producer;
		if (tx_ring->crb_intr_mask)
			regs_buff[i++] = FUNC7(tx_ring->crb_intr_mask);
		else
			regs_buff[i++] = QLCNIC_TX_INTR_NOT_CONFIGURED;
	}

	regs_buff[i++] = adapter->max_rds_rings; /* No. of RX ring */
	for (ring = 0; ring < adapter->max_rds_rings; ring++) {
		rds_rings = &recv_ctx->rds_rings[ring];
		regs_buff[i++] = FUNC7(rds_rings->crb_rcv_producer);
		regs_buff[i++] = rds_rings->producer;
	}

	regs_buff[i++] = adapter->drv_sds_rings; /* No. of SDS ring */
	for (ring = 0; ring < adapter->drv_sds_rings; ring++) {
		sds_ring = &(recv_ctx->sds_rings[ring]);
		regs_buff[i++] = FUNC7(sds_ring->crb_sts_consumer);
		regs_buff[i++] = sds_ring->consumer;
		regs_buff[i++] = FUNC7(sds_ring->crb_intr_mask);
	}
}