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
struct lan743x_tx {int /*<<< orphan*/ * overflow_skb; int /*<<< orphan*/  channel_number; int /*<<< orphan*/  napi; struct lan743x_adapter* adapter; } ;
struct lan743x_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMAC_CMD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMAC_INT_EN_CLR ; 
 int /*<<< orphan*/  FCT_TX_CTL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INT_EN_CLR ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct lan743x_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct lan743x_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct lan743x_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct lan743x_tx*) ; 
 int /*<<< orphan*/  FUNC10 (struct lan743x_tx*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(struct lan743x_tx *tx)
{
	struct lan743x_adapter *adapter = tx->adapter;

	FUNC7(adapter,
			  DMAC_CMD,
			  FUNC0(tx->channel_number));
	FUNC8(adapter, tx->channel_number);

	FUNC7(adapter,
			  DMAC_INT_EN_CLR,
			  FUNC1(tx->channel_number));
	FUNC7(adapter, INT_EN_CLR,
			  FUNC4(tx->channel_number));
	FUNC11(&tx->napi);
	FUNC12(&tx->napi);

	FUNC7(adapter, FCT_TX_CTL,
			  FUNC2(tx->channel_number));
	FUNC6(adapter, FCT_TX_CTL,
				 FUNC3(tx->channel_number),
				 0, 1000, 20000, 100);

	FUNC9(tx);

	if (tx->overflow_skb) {
		FUNC5(tx->overflow_skb);
		tx->overflow_skb = NULL;
	}

	FUNC10(tx);
}