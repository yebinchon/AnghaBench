#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct msix_entry {int entry; int /*<<< orphan*/  vector; } ;
struct lan743x_intr {int number_of_vectors; int using_vectors; int /*<<< orphan*/  flags; TYPE_1__* vector_list; int /*<<< orphan*/  irq; } ;
struct TYPE_6__ {int flags; } ;
struct lan743x_adapter {struct lan743x_adapter* rx; TYPE_2__ csr; struct lan743x_adapter* tx; int /*<<< orphan*/  netdev; TYPE_3__* pdev; struct lan743x_intr intr; } ;
struct TYPE_7__ {int /*<<< orphan*/  irq; } ;
struct TYPE_5__ {int int_mask; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  INTR_FLAG_MSIX_ENABLED ; 
 int /*<<< orphan*/  INTR_FLAG_MSI_ENABLED ; 
 int INT_BIT_ALL_OTHER_ ; 
 int INT_BIT_ALL_RX_ ; 
 int INT_BIT_ALL_TX_ ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int INT_BIT_MAS_ ; 
 int /*<<< orphan*/  INT_EN_SET ; 
 int /*<<< orphan*/  INT_MOD_CFG0 ; 
 int /*<<< orphan*/  INT_MOD_CFG1 ; 
 int /*<<< orphan*/  INT_MOD_CFG2 ; 
 int /*<<< orphan*/  INT_MOD_CFG3 ; 
 int /*<<< orphan*/  INT_MOD_CFG4 ; 
 int /*<<< orphan*/  INT_MOD_CFG5 ; 
 int /*<<< orphan*/  INT_MOD_CFG6 ; 
 int /*<<< orphan*/  INT_MOD_CFG7 ; 
 int /*<<< orphan*/  INT_MOD_MAP0 ; 
 int /*<<< orphan*/  INT_MOD_MAP1 ; 
 int /*<<< orphan*/  INT_MOD_MAP2 ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  INT_VEC_EN_AUTO_CLR ; 
 int /*<<< orphan*/  INT_VEC_EN_CLR ; 
 int /*<<< orphan*/  INT_VEC_EN_SET ; 
 int /*<<< orphan*/  INT_VEC_MAP0 ; 
 int FUNC4 (int,int) ; 
 int /*<<< orphan*/  INT_VEC_MAP1 ; 
 int FUNC5 (int,int) ; 
 int /*<<< orphan*/  INT_VEC_MAP2 ; 
 int LAN743X_CSR_FLAG_IS_A0 ; 
 int LAN743X_CSR_FLAG_SUPPORTS_INTR_AUTO_SET_CLR ; 
 int LAN743X_INT_MOD ; 
 int LAN743X_MAX_VECTOR_COUNT ; 
 int LAN743X_USED_RX_CHANNELS ; 
 int LAN743X_USED_TX_CHANNELS ; 
 int LAN743X_VECTOR_FLAG_IRQ_SHARED ; 
 int LAN743X_VECTOR_FLAG_MASTER_ENABLE_CLEAR ; 
 int LAN743X_VECTOR_FLAG_MASTER_ENABLE_SET ; 
 int LAN743X_VECTOR_FLAG_SOURCE_ENABLE_AUTO_CLEAR ; 
 int LAN743X_VECTOR_FLAG_SOURCE_ENABLE_AUTO_SET ; 
 int LAN743X_VECTOR_FLAG_SOURCE_ENABLE_CHECK ; 
 int LAN743X_VECTOR_FLAG_SOURCE_ENABLE_CLEAR ; 
 int LAN743X_VECTOR_FLAG_SOURCE_ENABLE_R2C ; 
 int LAN743X_VECTOR_FLAG_SOURCE_STATUS_AUTO_CLEAR ; 
 int LAN743X_VECTOR_FLAG_SOURCE_STATUS_R2C ; 
 int LAN743X_VECTOR_FLAG_SOURCE_STATUS_READ ; 
 int LAN743X_VECTOR_FLAG_SOURCE_STATUS_W2C ; 
 int LAN743X_VECTOR_FLAG_VECTOR_ENABLE_AUTO_CLEAR ; 
 int LAN743X_VECTOR_FLAG_VECTOR_ENABLE_AUTO_SET ; 
 int LAN743X_VECTOR_FLAG_VECTOR_ENABLE_ISR_CLEAR ; 
 int LAN743X_VECTOR_FLAG_VECTOR_ENABLE_ISR_SET ; 
 int /*<<< orphan*/  ifup ; 
 int /*<<< orphan*/  FUNC6 (struct lan743x_adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct lan743x_adapter*) ; 
 int FUNC8 (struct lan743x_adapter*,int,int,int,int /*<<< orphan*/ ,struct lan743x_adapter*) ; 
 int /*<<< orphan*/  lan743x_intr_shared_isr ; 
 int FUNC9 (struct lan743x_adapter*) ; 
 int /*<<< orphan*/  lan743x_rx_isr ; 
 int /*<<< orphan*/  lan743x_tx_isr ; 
 int /*<<< orphan*/  FUNC10 (struct msix_entry*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct lan743x_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 
 int FUNC13 (TYPE_3__*,struct msix_entry*,int,int) ; 

__attribute__((used)) static int FUNC14(struct lan743x_adapter *adapter)
{
	struct msix_entry msix_entries[LAN743X_MAX_VECTOR_COUNT];
	struct lan743x_intr *intr = &adapter->intr;
	u32 int_vec_en_auto_clr = 0;
	u32 int_vec_map0 = 0;
	u32 int_vec_map1 = 0;
	int ret = -ENODEV;
	int index = 0;
	u32 flags = 0;

	intr->number_of_vectors = 0;

	/* Try to set up MSIX interrupts */
	FUNC10(&msix_entries[0], 0,
	       sizeof(struct msix_entry) * LAN743X_MAX_VECTOR_COUNT);
	for (index = 0; index < LAN743X_MAX_VECTOR_COUNT; index++)
		msix_entries[index].entry = index;
	ret = FUNC13(adapter->pdev,
				    msix_entries, 1,
				    1 + LAN743X_USED_TX_CHANNELS +
				    LAN743X_USED_RX_CHANNELS);

	if (ret > 0) {
		intr->flags |= INTR_FLAG_MSIX_ENABLED;
		intr->number_of_vectors = ret;
		intr->using_vectors = true;
		for (index = 0; index < intr->number_of_vectors; index++)
			intr->vector_list[index].irq = msix_entries
						       [index].vector;
		FUNC11(adapter, ifup, adapter->netdev,
			   "using MSIX interrupts, number of vectors = %d\n",
			   intr->number_of_vectors);
	}

	/* If MSIX failed try to setup using MSI interrupts */
	if (!intr->number_of_vectors) {
		if (!(adapter->csr.flags & LAN743X_CSR_FLAG_IS_A0)) {
			if (!FUNC12(adapter->pdev)) {
				intr->flags |= INTR_FLAG_MSI_ENABLED;
				intr->number_of_vectors = 1;
				intr->using_vectors = true;
				intr->vector_list[0].irq =
					adapter->pdev->irq;
				FUNC11(adapter, ifup, adapter->netdev,
					   "using MSI interrupts, number of vectors = %d\n",
					   intr->number_of_vectors);
			}
		}
	}

	/* If MSIX, and MSI failed, setup using legacy interrupt */
	if (!intr->number_of_vectors) {
		intr->number_of_vectors = 1;
		intr->using_vectors = false;
		intr->vector_list[0].irq = intr->irq;
		FUNC11(adapter, ifup, adapter->netdev,
			   "using legacy interrupts\n");
	}

	/* At this point we must have at least one irq */
	FUNC6(adapter, INT_VEC_EN_CLR, 0xFFFFFFFF);

	/* map all interrupts to vector 0 */
	FUNC6(adapter, INT_VEC_MAP0, 0x00000000);
	FUNC6(adapter, INT_VEC_MAP1, 0x00000000);
	FUNC6(adapter, INT_VEC_MAP2, 0x00000000);
	flags = LAN743X_VECTOR_FLAG_SOURCE_STATUS_READ |
		LAN743X_VECTOR_FLAG_SOURCE_STATUS_W2C |
		LAN743X_VECTOR_FLAG_SOURCE_ENABLE_CHECK |
		LAN743X_VECTOR_FLAG_SOURCE_ENABLE_CLEAR;

	if (intr->using_vectors) {
		flags |= LAN743X_VECTOR_FLAG_VECTOR_ENABLE_ISR_CLEAR |
			 LAN743X_VECTOR_FLAG_VECTOR_ENABLE_ISR_SET;
	} else {
		flags |= LAN743X_VECTOR_FLAG_MASTER_ENABLE_CLEAR |
			 LAN743X_VECTOR_FLAG_MASTER_ENABLE_SET |
			 LAN743X_VECTOR_FLAG_IRQ_SHARED;
	}

	if (adapter->csr.flags & LAN743X_CSR_FLAG_SUPPORTS_INTR_AUTO_SET_CLR) {
		flags &= ~LAN743X_VECTOR_FLAG_SOURCE_STATUS_READ;
		flags &= ~LAN743X_VECTOR_FLAG_SOURCE_STATUS_W2C;
		flags &= ~LAN743X_VECTOR_FLAG_SOURCE_ENABLE_CLEAR;
		flags &= ~LAN743X_VECTOR_FLAG_SOURCE_ENABLE_CHECK;
		flags |= LAN743X_VECTOR_FLAG_SOURCE_STATUS_R2C;
		flags |= LAN743X_VECTOR_FLAG_SOURCE_ENABLE_R2C;
	}

	ret = FUNC8(adapter, 0, flags,
					INT_BIT_ALL_RX_ | INT_BIT_ALL_TX_ |
					INT_BIT_ALL_OTHER_,
					lan743x_intr_shared_isr, adapter);
	if (ret)
		goto clean_up;
	intr->flags |= FUNC0(0);

	if (intr->using_vectors)
		FUNC6(adapter, INT_VEC_EN_SET,
				  FUNC3(0));

	if (!(adapter->csr.flags & LAN743X_CSR_FLAG_IS_A0)) {
		FUNC6(adapter, INT_MOD_CFG0, LAN743X_INT_MOD);
		FUNC6(adapter, INT_MOD_CFG1, LAN743X_INT_MOD);
		FUNC6(adapter, INT_MOD_CFG2, LAN743X_INT_MOD);
		FUNC6(adapter, INT_MOD_CFG3, LAN743X_INT_MOD);
		FUNC6(adapter, INT_MOD_CFG4, LAN743X_INT_MOD);
		FUNC6(adapter, INT_MOD_CFG5, LAN743X_INT_MOD);
		FUNC6(adapter, INT_MOD_CFG6, LAN743X_INT_MOD);
		FUNC6(adapter, INT_MOD_CFG7, LAN743X_INT_MOD);
		FUNC6(adapter, INT_MOD_MAP0, 0x00005432);
		FUNC6(adapter, INT_MOD_MAP1, 0x00000001);
		FUNC6(adapter, INT_MOD_MAP2, 0x00FFFFFF);
	}

	/* enable interrupts */
	FUNC6(adapter, INT_EN_SET, INT_BIT_MAS_);
	ret = FUNC9(adapter);
	if (ret)
		goto clean_up;

	if (intr->number_of_vectors > 1) {
		int number_of_tx_vectors = intr->number_of_vectors - 1;

		if (number_of_tx_vectors > LAN743X_USED_TX_CHANNELS)
			number_of_tx_vectors = LAN743X_USED_TX_CHANNELS;
		flags = LAN743X_VECTOR_FLAG_SOURCE_STATUS_READ |
			LAN743X_VECTOR_FLAG_SOURCE_STATUS_W2C |
			LAN743X_VECTOR_FLAG_SOURCE_ENABLE_CHECK |
			LAN743X_VECTOR_FLAG_SOURCE_ENABLE_CLEAR |
			LAN743X_VECTOR_FLAG_VECTOR_ENABLE_ISR_CLEAR |
			LAN743X_VECTOR_FLAG_VECTOR_ENABLE_ISR_SET;

		if (adapter->csr.flags &
		   LAN743X_CSR_FLAG_SUPPORTS_INTR_AUTO_SET_CLR) {
			flags = LAN743X_VECTOR_FLAG_VECTOR_ENABLE_AUTO_SET |
				LAN743X_VECTOR_FLAG_SOURCE_ENABLE_AUTO_SET |
				LAN743X_VECTOR_FLAG_SOURCE_ENABLE_AUTO_CLEAR |
				LAN743X_VECTOR_FLAG_SOURCE_STATUS_AUTO_CLEAR;
		}

		for (index = 0; index < number_of_tx_vectors; index++) {
			u32 int_bit = FUNC2(index);
			int vector = index + 1;

			/* map TX interrupt to vector */
			int_vec_map1 |= FUNC5(index, vector);
			FUNC6(adapter, INT_VEC_MAP1, int_vec_map1);

			/* Remove TX interrupt from shared mask */
			intr->vector_list[0].int_mask &= ~int_bit;
			ret = FUNC8(adapter, vector, flags,
							int_bit, lan743x_tx_isr,
							&adapter->tx[index]);
			if (ret)
				goto clean_up;
			intr->flags |= FUNC0(vector);
			if (!(flags &
			    LAN743X_VECTOR_FLAG_VECTOR_ENABLE_AUTO_SET))
				FUNC6(adapter, INT_VEC_EN_SET,
						  FUNC3(vector));
		}
	}
	if ((intr->number_of_vectors - LAN743X_USED_TX_CHANNELS) > 1) {
		int number_of_rx_vectors = intr->number_of_vectors -
					   LAN743X_USED_TX_CHANNELS - 1;

		if (number_of_rx_vectors > LAN743X_USED_RX_CHANNELS)
			number_of_rx_vectors = LAN743X_USED_RX_CHANNELS;

		flags = LAN743X_VECTOR_FLAG_SOURCE_STATUS_READ |
			LAN743X_VECTOR_FLAG_SOURCE_STATUS_W2C |
			LAN743X_VECTOR_FLAG_SOURCE_ENABLE_CHECK |
			LAN743X_VECTOR_FLAG_SOURCE_ENABLE_CLEAR |
			LAN743X_VECTOR_FLAG_VECTOR_ENABLE_ISR_CLEAR |
			LAN743X_VECTOR_FLAG_VECTOR_ENABLE_ISR_SET;

		if (adapter->csr.flags &
		    LAN743X_CSR_FLAG_SUPPORTS_INTR_AUTO_SET_CLR) {
			flags = LAN743X_VECTOR_FLAG_VECTOR_ENABLE_AUTO_CLEAR |
				LAN743X_VECTOR_FLAG_VECTOR_ENABLE_AUTO_SET |
				LAN743X_VECTOR_FLAG_SOURCE_ENABLE_AUTO_SET |
				LAN743X_VECTOR_FLAG_SOURCE_ENABLE_AUTO_CLEAR |
				LAN743X_VECTOR_FLAG_SOURCE_STATUS_AUTO_CLEAR;
		}
		for (index = 0; index < number_of_rx_vectors; index++) {
			int vector = index + 1 + LAN743X_USED_TX_CHANNELS;
			u32 int_bit = FUNC1(index);

			/* map RX interrupt to vector */
			int_vec_map0 |= FUNC4(index, vector);
			FUNC6(adapter, INT_VEC_MAP0, int_vec_map0);
			if (flags &
			    LAN743X_VECTOR_FLAG_VECTOR_ENABLE_AUTO_CLEAR) {
				int_vec_en_auto_clr |= FUNC3(vector);
				FUNC6(adapter, INT_VEC_EN_AUTO_CLR,
						  int_vec_en_auto_clr);
			}

			/* Remove RX interrupt from shared mask */
			intr->vector_list[0].int_mask &= ~int_bit;
			ret = FUNC8(adapter, vector, flags,
							int_bit, lan743x_rx_isr,
							&adapter->rx[index]);
			if (ret)
				goto clean_up;
			intr->flags |= FUNC0(vector);

			FUNC6(adapter, INT_VEC_EN_SET,
					  FUNC3(vector));
		}
	}
	return 0;

clean_up:
	FUNC7(adapter);
	return ret;
}