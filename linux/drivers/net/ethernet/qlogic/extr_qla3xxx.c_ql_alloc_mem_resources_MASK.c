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
typedef  int /*<<< orphan*/  u8 ;
struct ql3_adapter {int num_lbufq_entries; int num_large_buffers; int /*<<< orphan*/  shadow_reg_phy_addr; int /*<<< orphan*/ * shadow_reg_virt_addr; int /*<<< orphan*/  pdev; int /*<<< orphan*/  rsp_q_virt_addr; int /*<<< orphan*/  rsp_current; TYPE_1__* ndev; scalar_t__ req_consumer_index_phy_addr_low; scalar_t__ rsp_producer_index_phy_addr_low; int /*<<< orphan*/  req_consumer_index_phy_addr_high; int /*<<< orphan*/  rsp_producer_index_phy_addr_high; int /*<<< orphan*/ * preq_consumer_index; int /*<<< orphan*/ * prsp_producer_index; scalar_t__ lrg_buffer_len; scalar_t__ max_frame_size; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_2__ {scalar_t__ mtu; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ ETHERNET_CRC_SIZE ; 
 scalar_t__ JUMBO_MTU_SIZE ; 
 int JUMBO_NUM_LBUFQ_ENTRIES ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ NORMAL_MTU_SIZE ; 
 int NUM_LBUFQ_ENTRIES ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int QL_ADDR_ELE_PER_BUFQ_ENTRY ; 
 scalar_t__ QL_HEADER_SPACE ; 
 scalar_t__ VLAN_ETH_HLEN ; 
 scalar_t__ VLAN_ID_LEN ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct ql3_adapter*) ; 
 scalar_t__ FUNC6 (struct ql3_adapter*) ; 
 scalar_t__ FUNC7 (struct ql3_adapter*) ; 
 scalar_t__ FUNC8 (struct ql3_adapter*) ; 
 scalar_t__ FUNC9 (struct ql3_adapter*) ; 
 int /*<<< orphan*/  FUNC10 (struct ql3_adapter*) ; 
 int /*<<< orphan*/  FUNC11 (struct ql3_adapter*) ; 
 int /*<<< orphan*/  FUNC12 (struct ql3_adapter*) ; 
 int /*<<< orphan*/  FUNC13 (struct ql3_adapter*) ; 

__attribute__((used)) static int FUNC14(struct ql3_adapter *qdev)
{
	if (qdev->ndev->mtu == NORMAL_MTU_SIZE) {
		qdev->num_lbufq_entries = NUM_LBUFQ_ENTRIES;
		qdev->lrg_buffer_len = NORMAL_MTU_SIZE;
	} else if (qdev->ndev->mtu == JUMBO_MTU_SIZE) {
		/*
		 * Bigger buffers, so less of them.
		 */
		qdev->num_lbufq_entries = JUMBO_NUM_LBUFQ_ENTRIES;
		qdev->lrg_buffer_len = JUMBO_MTU_SIZE;
	} else {
		FUNC2(qdev->ndev, "Invalid mtu size: %d.  Only %d and %d are accepted.\n",
			   qdev->ndev->mtu, NORMAL_MTU_SIZE, JUMBO_MTU_SIZE);
		return -ENOMEM;
	}
	qdev->num_large_buffers =
		qdev->num_lbufq_entries * QL_ADDR_ELE_PER_BUFQ_ENTRY;
	qdev->lrg_buffer_len += VLAN_ETH_HLEN + VLAN_ID_LEN + QL_HEADER_SPACE;
	qdev->max_frame_size =
		(qdev->lrg_buffer_len - QL_HEADER_SPACE) + ETHERNET_CRC_SIZE;

	/*
	 * First allocate a page of shared memory and use it for shadow
	 * locations of Network Request Queue Consumer Address Register and
	 * Network Completion Queue Producer Index Register
	 */
	qdev->shadow_reg_virt_addr =
		FUNC3(qdev->pdev,
				     PAGE_SIZE, &qdev->shadow_reg_phy_addr);

	if (qdev->shadow_reg_virt_addr != NULL) {
		qdev->preq_consumer_index = qdev->shadow_reg_virt_addr;
		qdev->req_consumer_index_phy_addr_high =
			FUNC1(qdev->shadow_reg_phy_addr);
		qdev->req_consumer_index_phy_addr_low =
			FUNC0(qdev->shadow_reg_phy_addr);

		qdev->prsp_producer_index =
			(__le32 *) (((u8 *) qdev->preq_consumer_index) + 8);
		qdev->rsp_producer_index_phy_addr_high =
			qdev->req_consumer_index_phy_addr_high;
		qdev->rsp_producer_index_phy_addr_low =
			qdev->req_consumer_index_phy_addr_low + 8;
	} else {
		FUNC2(qdev->ndev, "shadowReg Alloc failed\n");
		return -ENOMEM;
	}

	if (FUNC7(qdev) != 0) {
		FUNC2(qdev->ndev, "ql_alloc_net_req_rsp_queues failed\n");
		goto err_req_rsp;
	}

	if (FUNC5(qdev) != 0) {
		FUNC2(qdev->ndev, "ql_alloc_buffer_queues failed\n");
		goto err_buffer_queues;
	}

	if (FUNC8(qdev) != 0) {
		FUNC2(qdev->ndev, "ql_alloc_small_buffers failed\n");
		goto err_small_buffers;
	}

	if (FUNC6(qdev) != 0) {
		FUNC2(qdev->ndev, "ql_alloc_large_buffers failed\n");
		goto err_small_buffers;
	}

	/* Initialize the large buffer queue. */
	FUNC13(qdev);
	if (FUNC9(qdev))
		goto err_free_list;

	qdev->rsp_current = qdev->rsp_q_virt_addr;

	return 0;
err_free_list:
	FUNC12(qdev);
err_small_buffers:
	FUNC10(qdev);
err_buffer_queues:
	FUNC11(qdev);
err_req_rsp:
	FUNC4(qdev->pdev,
			    PAGE_SIZE,
			    qdev->shadow_reg_virt_addr,
			    qdev->shadow_reg_phy_addr);

	return -ENOMEM;
}