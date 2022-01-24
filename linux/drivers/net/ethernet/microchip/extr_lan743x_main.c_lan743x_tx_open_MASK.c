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
struct lan743x_tx {int ring_size; int vector_flags; int /*<<< orphan*/  channel_number; int /*<<< orphan*/  napi; scalar_t__ last_tail; void* last_head; int /*<<< orphan*/  head_dma_ptr; int /*<<< orphan*/  ring_dma_ptr; struct lan743x_adapter* adapter; } ;
struct TYPE_2__ {int flags; } ;
struct lan743x_adapter {int /*<<< orphan*/  netdev; TYPE_1__ csr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMAC_CMD ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMAC_INT_EN_SET ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FCT_TX_CTL ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INT_EN_SET ; 
 int LAN743X_CSR_FLAG_IS_A0 ; 
 int LAN743X_VECTOR_FLAG_SOURCE_ENABLE_AUTO_CLEAR ; 
 int LAN743X_VECTOR_FLAG_SOURCE_ENABLE_AUTO_SET ; 
 int LAN743X_VECTOR_FLAG_SOURCE_ENABLE_R2C ; 
 int LAN743X_VECTOR_FLAG_SOURCE_STATUS_AUTO_CLEAR ; 
 int LAN743X_VECTOR_FLAG_SOURCE_STATUS_R2C ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int TX_CFG_A_TX_HP_WB_EN_ ; 
 int TX_CFG_A_TX_HP_WB_ON_INT_TMR_ ; 
 int FUNC11 (int) ; 
 int FUNC12 (int) ; 
 int FUNC13 (int) ; 
 int TX_CFG_A_TX_TMR_HPWB_SEL_IOC_ ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int TX_CFG_B_TDMABL_512_ ; 
 int TX_CFG_B_TX_RING_LEN_MASK_ ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int TX_CFG_C_TX_DMA_INT_STS_AUTO_CLR_ ; 
 int TX_CFG_C_TX_INT_EN_R2C_ ; 
 int TX_CFG_C_TX_INT_STS_R2C_MODE_MASK_ ; 
 int TX_CFG_C_TX_TOP_INT_EN_AUTO_CLR_ ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 void* FUNC20 (struct lan743x_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct lan743x_adapter*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC22 (struct lan743x_adapter*,int /*<<< orphan*/ ,int) ; 
 int FUNC23 (struct lan743x_adapter*,int) ; 
 int /*<<< orphan*/  lan743x_tx_napi_poll ; 
 int FUNC24 (struct lan743x_tx*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC27(struct lan743x_tx *tx)
{
	struct lan743x_adapter *adapter = NULL;
	u32 data = 0;
	int ret;

	adapter = tx->adapter;
	ret = FUNC24(tx);
	if (ret)
		return ret;

	/* initialize fifo */
	FUNC22(adapter, FCT_TX_CTL,
			  FUNC6(tx->channel_number));
	FUNC21(adapter, FCT_TX_CTL,
				 FUNC6(tx->channel_number),
				 0, 1000, 20000, 100);

	/* enable fifo */
	FUNC22(adapter, FCT_TX_CTL,
			  FUNC5(tx->channel_number));

	/* reset tx channel */
	FUNC22(adapter, DMAC_CMD,
			  FUNC1(tx->channel_number));
	FUNC21(adapter, DMAC_CMD,
				 FUNC1(tx->channel_number),
				 0, 1000, 20000, 100);

	/* Write TX_BASE_ADDR */
	FUNC22(adapter,
			  FUNC8(tx->channel_number),
			  FUNC3(tx->ring_dma_ptr));
	FUNC22(adapter,
			  FUNC9(tx->channel_number),
			  FUNC4(tx->ring_dma_ptr));

	/* Write TX_CFG_B */
	data = FUNC20(adapter, FUNC14(tx->channel_number));
	data &= ~TX_CFG_B_TX_RING_LEN_MASK_;
	data |= ((tx->ring_size) & TX_CFG_B_TX_RING_LEN_MASK_);
	if (!(adapter->csr.flags & LAN743X_CSR_FLAG_IS_A0))
		data |= TX_CFG_B_TDMABL_512_;
	FUNC22(adapter, FUNC14(tx->channel_number), data);

	/* Write TX_CFG_A */
	data = TX_CFG_A_TX_TMR_HPWB_SEL_IOC_ | TX_CFG_A_TX_HP_WB_EN_;
	if (!(adapter->csr.flags & LAN743X_CSR_FLAG_IS_A0)) {
		data |= TX_CFG_A_TX_HP_WB_ON_INT_TMR_;
		data |= FUNC13(0x10);
		data |= FUNC12(0x04);
		data |= FUNC11(0x07);
	}
	FUNC22(adapter, FUNC10(tx->channel_number), data);

	/* Write TX_HEAD_WRITEBACK_ADDR */
	FUNC22(adapter,
			  FUNC17(tx->channel_number),
			  FUNC3(tx->head_dma_ptr));
	FUNC22(adapter,
			  FUNC18(tx->channel_number),
			  FUNC4(tx->head_dma_ptr));

	/* set last head */
	tx->last_head = FUNC20(adapter, FUNC16(tx->channel_number));

	/* write TX_TAIL */
	tx->last_tail = 0;
	FUNC22(adapter, FUNC19(tx->channel_number),
			  (u32)(tx->last_tail));
	tx->vector_flags = FUNC23(adapter,
							 FUNC7
							 (tx->channel_number));
	FUNC26(adapter->netdev,
			  &tx->napi, lan743x_tx_napi_poll,
			  tx->ring_size - 1);
	FUNC25(&tx->napi);

	data = 0;
	if (tx->vector_flags & LAN743X_VECTOR_FLAG_SOURCE_ENABLE_AUTO_CLEAR)
		data |= TX_CFG_C_TX_TOP_INT_EN_AUTO_CLR_;
	if (tx->vector_flags & LAN743X_VECTOR_FLAG_SOURCE_STATUS_AUTO_CLEAR)
		data |= TX_CFG_C_TX_DMA_INT_STS_AUTO_CLR_;
	if (tx->vector_flags & LAN743X_VECTOR_FLAG_SOURCE_STATUS_R2C)
		data |= TX_CFG_C_TX_INT_STS_R2C_MODE_MASK_;
	if (tx->vector_flags & LAN743X_VECTOR_FLAG_SOURCE_ENABLE_R2C)
		data |= TX_CFG_C_TX_INT_EN_R2C_;
	FUNC22(adapter, FUNC15(tx->channel_number), data);

	if (!(tx->vector_flags & LAN743X_VECTOR_FLAG_SOURCE_ENABLE_AUTO_SET))
		FUNC22(adapter, INT_EN_SET,
				  FUNC7(tx->channel_number));
	FUNC22(adapter, DMAC_INT_EN_SET,
			  FUNC2(tx->channel_number));

	/*  start dmac channel */
	FUNC22(adapter, DMAC_CMD,
			  FUNC0(tx->channel_number));
	return 0;
}