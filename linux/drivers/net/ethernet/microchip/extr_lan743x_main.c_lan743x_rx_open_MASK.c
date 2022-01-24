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
struct lan743x_rx {int ring_size; int vector_flags; int last_tail; int last_head; int /*<<< orphan*/  napi; int /*<<< orphan*/  channel_number; int /*<<< orphan*/  head_dma_ptr; int /*<<< orphan*/  ring_dma_ptr; scalar_t__ frame_count; struct lan743x_adapter* adapter; } ;
struct TYPE_2__ {int flags; } ;
struct lan743x_adapter {TYPE_1__ csr; int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMAC_CMD ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMAC_INT_EN_SET ; 
 int /*<<< orphan*/  DMAC_INT_STS ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int FCT_FLOW_CTL_REQ_EN_ ; 
 int /*<<< orphan*/  FCT_RX_CTL ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INT_EN_SET ; 
 int LAN743X_CSR_FLAG_IS_A0 ; 
 int LAN743X_VECTOR_FLAG_SOURCE_ENABLE_AUTO_CLEAR ; 
 int LAN743X_VECTOR_FLAG_SOURCE_ENABLE_R2C ; 
 int LAN743X_VECTOR_FLAG_SOURCE_STATUS_AUTO_CLEAR ; 
 int LAN743X_VECTOR_FLAG_SOURCE_STATUS_R2C ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int RX_CFG_A_RX_HP_WB_EN_ ; 
 int FUNC14 (int) ; 
 int FUNC15 (int) ; 
 int RX_CFG_A_RX_WB_ON_INT_TMR_ ; 
 int FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int RX_CFG_B_RDMABL_512_ ; 
 int RX_CFG_B_RX_PAD_0_ ; 
 int RX_CFG_B_RX_PAD_2_ ; 
 int RX_CFG_B_RX_PAD_MASK_ ; 
 int RX_CFG_B_RX_RING_LEN_MASK_ ; 
 int RX_CFG_B_TS_ALL_RX_ ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int RX_CFG_C_RX_DMA_INT_STS_AUTO_CLR_ ; 
 int RX_CFG_C_RX_INT_EN_R2C_ ; 
 int RX_CFG_C_RX_INT_STS_R2C_MODE_MASK_ ; 
 int RX_CFG_C_RX_TOP_INT_EN_AUTO_CLR_ ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RX_HEAD_PADDING ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 void* FUNC23 (struct lan743x_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct lan743x_adapter*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC25 (struct lan743x_adapter*,int /*<<< orphan*/ ,int) ; 
 int FUNC26 (struct lan743x_adapter*,int) ; 
 int /*<<< orphan*/  lan743x_rx_napi_poll ; 
 int /*<<< orphan*/  FUNC27 (struct lan743x_rx*) ; 
 int FUNC28 (struct lan743x_rx*) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC32(struct lan743x_rx *rx)
{
	struct lan743x_adapter *adapter = rx->adapter;
	u32 data = 0;
	int ret;

	rx->frame_count = 0;
	ret = FUNC28(rx);
	if (ret)
		goto return_error;

	FUNC30(adapter->netdev,
		       &rx->napi, lan743x_rx_napi_poll,
		       rx->ring_size - 1);

	FUNC25(adapter, DMAC_CMD,
			  FUNC0(rx->channel_number));
	FUNC24(adapter, DMAC_CMD,
				 FUNC0(rx->channel_number),
				 0, 1000, 20000, 100);

	/* set ring base address */
	FUNC25(adapter,
			  FUNC11(rx->channel_number),
			  FUNC3(rx->ring_dma_ptr));
	FUNC25(adapter,
			  FUNC12(rx->channel_number),
			  FUNC4(rx->ring_dma_ptr));

	/* set rx write back address */
	FUNC25(adapter,
			  FUNC20(rx->channel_number),
			  FUNC3(rx->head_dma_ptr));
	FUNC25(adapter,
			  FUNC21(rx->channel_number),
			  FUNC4(rx->head_dma_ptr));
	data = RX_CFG_A_RX_HP_WB_EN_;
	if (!(adapter->csr.flags & LAN743X_CSR_FLAG_IS_A0)) {
		data |= (RX_CFG_A_RX_WB_ON_INT_TMR_ |
			FUNC16(0x7) |
			FUNC15(16) |
			FUNC14(4));
	}

	/* set RX_CFG_A */
	FUNC25(adapter,
			  FUNC13(rx->channel_number), data);

	/* set RX_CFG_B */
	data = FUNC23(adapter, FUNC17(rx->channel_number));
	data &= ~RX_CFG_B_RX_PAD_MASK_;
	if (!RX_HEAD_PADDING)
		data |= RX_CFG_B_RX_PAD_0_;
	else
		data |= RX_CFG_B_RX_PAD_2_;
	data &= ~RX_CFG_B_RX_RING_LEN_MASK_;
	data |= ((rx->ring_size) & RX_CFG_B_RX_RING_LEN_MASK_);
	data |= RX_CFG_B_TS_ALL_RX_;
	if (!(adapter->csr.flags & LAN743X_CSR_FLAG_IS_A0))
		data |= RX_CFG_B_RDMABL_512_;

	FUNC25(adapter, FUNC17(rx->channel_number), data);
	rx->vector_flags = FUNC26(adapter,
							 FUNC10
							 (rx->channel_number));

	/* set RX_CFG_C */
	data = 0;
	if (rx->vector_flags & LAN743X_VECTOR_FLAG_SOURCE_ENABLE_AUTO_CLEAR)
		data |= RX_CFG_C_RX_TOP_INT_EN_AUTO_CLR_;
	if (rx->vector_flags & LAN743X_VECTOR_FLAG_SOURCE_STATUS_AUTO_CLEAR)
		data |= RX_CFG_C_RX_DMA_INT_STS_AUTO_CLR_;
	if (rx->vector_flags & LAN743X_VECTOR_FLAG_SOURCE_STATUS_R2C)
		data |= RX_CFG_C_RX_INT_STS_R2C_MODE_MASK_;
	if (rx->vector_flags & LAN743X_VECTOR_FLAG_SOURCE_ENABLE_R2C)
		data |= RX_CFG_C_RX_INT_EN_R2C_;
	FUNC25(adapter, FUNC18(rx->channel_number), data);

	rx->last_tail = ((u32)(rx->ring_size - 1));
	FUNC25(adapter, FUNC22(rx->channel_number),
			  rx->last_tail);
	rx->last_head = FUNC23(adapter, FUNC19(rx->channel_number));
	if (rx->last_head) {
		ret = -EIO;
		goto napi_delete;
	}

	FUNC29(&rx->napi);

	FUNC25(adapter, INT_EN_SET,
			  FUNC10(rx->channel_number));
	FUNC25(adapter, DMAC_INT_STS,
			  FUNC2(rx->channel_number));
	FUNC25(adapter, DMAC_INT_EN_SET,
			  FUNC2(rx->channel_number));
	FUNC25(adapter, DMAC_CMD,
			  FUNC1(rx->channel_number));

	/* initialize fifo */
	FUNC25(adapter, FCT_RX_CTL,
			  FUNC9(rx->channel_number));
	FUNC24(adapter, FCT_RX_CTL,
				 FUNC9(rx->channel_number),
				 0, 1000, 20000, 100);
	FUNC25(adapter, FUNC5(rx->channel_number),
			  FCT_FLOW_CTL_REQ_EN_ |
			  FUNC7(0x2A) |
			  FUNC6(0xA));

	/* enable fifo */
	FUNC25(adapter, FCT_RX_CTL,
			  FUNC8(rx->channel_number));
	return 0;

napi_delete:
	FUNC31(&rx->napi);
	FUNC27(rx);

return_error:
	return ret;
}