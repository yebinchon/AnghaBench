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
struct lan743x_rx {int /*<<< orphan*/  napi; int /*<<< orphan*/  channel_number; struct lan743x_adapter* adapter; } ;
struct lan743x_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMAC_CMD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMAC_INT_EN_CLR ; 
 int /*<<< orphan*/  FCT_RX_CTL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INT_EN_CLR ; 
 int /*<<< orphan*/  FUNC5 (struct lan743x_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct lan743x_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct lan743x_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct lan743x_rx*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct lan743x_rx *rx)
{
	struct lan743x_adapter *adapter = rx->adapter;

	FUNC6(adapter, FCT_RX_CTL,
			  FUNC2(rx->channel_number));
	FUNC5(adapter, FCT_RX_CTL,
				 FUNC3(rx->channel_number),
				 0, 1000, 20000, 100);

	FUNC6(adapter, DMAC_CMD,
			  FUNC0(rx->channel_number));
	FUNC7(adapter, rx->channel_number);

	FUNC6(adapter, DMAC_INT_EN_CLR,
			  FUNC1(rx->channel_number));
	FUNC6(adapter, INT_EN_CLR,
			  FUNC4(rx->channel_number));
	FUNC9(&rx->napi);

	FUNC10(&rx->napi);

	FUNC8(rx);
}