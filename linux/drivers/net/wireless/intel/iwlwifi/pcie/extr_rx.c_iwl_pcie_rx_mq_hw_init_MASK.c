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
struct iwl_trans_pcie {int rx_buf_size; TYPE_1__* rxq; } ;
struct iwl_trans {int num_rx_queues; TYPE_2__* cfg; } ;
struct TYPE_4__ {scalar_t__ integrated; } ;
struct TYPE_3__ {int /*<<< orphan*/  rb_stts_dma; int /*<<< orphan*/  used_bd_dma; int /*<<< orphan*/  bd_dma; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  CSR_INT_COALESCING ; 
 int /*<<< orphan*/  DEFAULT_RXQ_NUM ; 
#define  IWL_AMSDU_12K 131 
#define  IWL_AMSDU_2K 130 
#define  IWL_AMSDU_4K 129 
#define  IWL_AMSDU_8K 128 
 int /*<<< orphan*/  IWL_HOST_INT_TIMEOUT_DEF ; 
 struct iwl_trans_pcie* FUNC1 (struct iwl_trans*) ; 
 int /*<<< orphan*/  RB_CHUNK_SIZE ; 
 int RFH_DMA_EN_ENABLE_VAL ; 
 int /*<<< orphan*/  RFH_GEN_CFG ; 
 int /*<<< orphan*/  RFH_GEN_CFG_RB_CHUNK_SIZE_128 ; 
 int /*<<< orphan*/  RFH_GEN_CFG_RB_CHUNK_SIZE_64 ; 
 int RFH_GEN_CFG_RFH_DMA_SNOOP ; 
 int RFH_GEN_CFG_SERVICE_DMA_SNOOP ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  RFH_RXF_DMA_CFG ; 
 int RFH_RXF_DMA_DROP_TOO_LARGE_MASK ; 
 int RFH_RXF_DMA_MIN_RB_4_8 ; 
 int RFH_RXF_DMA_RBDCB_SIZE_512 ; 
 int RFH_RXF_DMA_RB_SIZE_12K ; 
 int RFH_RXF_DMA_RB_SIZE_2K ; 
 int RFH_RXF_DMA_RB_SIZE_4K ; 
 int RFH_RXF_DMA_RB_SIZE_8K ; 
 int /*<<< orphan*/  RFH_RXF_RXQ_ACTIVE ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct iwl_trans*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC11 (struct iwl_trans*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC12 (struct iwl_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct iwl_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct iwl_trans*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC15(struct iwl_trans *trans)
{
	struct iwl_trans_pcie *trans_pcie = FUNC1(trans);
	u32 rb_size, enabled = 0;
	unsigned long flags;
	int i;

	switch (trans_pcie->rx_buf_size) {
	case IWL_AMSDU_2K:
		rb_size = RFH_RXF_DMA_RB_SIZE_2K;
		break;
	case IWL_AMSDU_4K:
		rb_size = RFH_RXF_DMA_RB_SIZE_4K;
		break;
	case IWL_AMSDU_8K:
		rb_size = RFH_RXF_DMA_RB_SIZE_8K;
		break;
	case IWL_AMSDU_12K:
		rb_size = RFH_RXF_DMA_RB_SIZE_12K;
		break;
	default:
		FUNC9(1);
		rb_size = RFH_RXF_DMA_RB_SIZE_4K;
	}

	if (!FUNC10(trans, &flags))
		return;

	/* Stop Rx DMA */
	FUNC14(trans, RFH_RXF_DMA_CFG, 0);
	/* disable free amd used rx queue operation */
	FUNC14(trans, RFH_RXF_RXQ_ACTIVE, 0);

	for (i = 0; i < trans->num_rx_queues; i++) {
		/* Tell device where to find RBD free table in DRAM */
		FUNC13(trans,
					 FUNC3(i),
					 trans_pcie->rxq[i].bd_dma);
		/* Tell device where to find RBD used table in DRAM */
		FUNC13(trans,
					 FUNC6(i),
					 trans_pcie->rxq[i].used_bd_dma);
		/* Tell device where in DRAM to update its Rx status */
		FUNC13(trans,
					 FUNC8(i),
					 trans_pcie->rxq[i].rb_stts_dma);
		/* Reset device indice tables */
		FUNC14(trans, FUNC5(i), 0);
		FUNC14(trans, FUNC4(i), 0);
		FUNC14(trans, FUNC7(i), 0);

		enabled |= FUNC0(i) | FUNC0(i + 16);
	}

	/*
	 * Enable Rx DMA
	 * Rx buffer size 4 or 8k or 12k
	 * Min RB size 4 or 8
	 * Drop frames that exceed RB size
	 * 512 RBDs
	 */
	FUNC14(trans, RFH_RXF_DMA_CFG,
			       RFH_DMA_EN_ENABLE_VAL | rb_size |
			       RFH_RXF_DMA_MIN_RB_4_8 |
			       RFH_RXF_DMA_DROP_TOO_LARGE_MASK |
			       RFH_RXF_DMA_RBDCB_SIZE_512);

	/*
	 * Activate DMA snooping.
	 * Set RX DMA chunk size to 64B for IOSF and 128B for PCIe
	 * Default queue is 0
	 */
	FUNC14(trans, RFH_GEN_CFG,
			       RFH_GEN_CFG_RFH_DMA_SNOOP |
			       FUNC2(DEFAULT_RXQ_NUM, 0) |
			       RFH_GEN_CFG_SERVICE_DMA_SNOOP |
			       FUNC2(RB_CHUNK_SIZE,
					       trans->cfg->integrated ?
					       RFH_GEN_CFG_RB_CHUNK_SIZE_64 :
					       RFH_GEN_CFG_RB_CHUNK_SIZE_128));
	/* Enable the relevant rx queues */
	FUNC14(trans, RFH_RXF_RXQ_ACTIVE, enabled);

	FUNC11(trans, &flags);

	/* Set interrupt coalescing timer to default (2048 usecs) */
	FUNC12(trans, CSR_INT_COALESCING, IWL_HOST_INT_TIMEOUT_DEF);
}