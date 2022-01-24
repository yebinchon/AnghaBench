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
typedef  int u32 ;
struct lan743x_adapter {int /*<<< orphan*/ * tx; int /*<<< orphan*/ * rx; } ;

/* Variables and functions */
 int INT_BIT_1588_ ; 
 int INT_BIT_ALL_OTHER_ ; 
 int INT_BIT_ALL_RX_ ; 
 int INT_BIT_ALL_TX_ ; 
 int FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned int) ; 
 int INT_BIT_SW_GP_ ; 
 int /*<<< orphan*/  INT_EN_CLR ; 
 unsigned int LAN743X_USED_RX_CHANNELS ; 
 unsigned int LAN743X_USED_TX_CHANNELS ; 
 int /*<<< orphan*/  FUNC2 (struct lan743x_adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct lan743x_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct lan743x_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void FUNC7(void *context, u32 int_sts, u32 flags)
{
	struct lan743x_adapter *adapter = context;
	unsigned int channel;

	if (int_sts & INT_BIT_ALL_RX_) {
		for (channel = 0; channel < LAN743X_USED_RX_CHANNELS;
			channel++) {
			u32 int_bit = FUNC0(channel);

			if (int_sts & int_bit) {
				FUNC5(&adapter->rx[channel],
					       int_bit, flags);
				int_sts &= ~int_bit;
			}
		}
	}
	if (int_sts & INT_BIT_ALL_TX_) {
		for (channel = 0; channel < LAN743X_USED_TX_CHANNELS;
			channel++) {
			u32 int_bit = FUNC1(channel);

			if (int_sts & int_bit) {
				FUNC6(&adapter->tx[channel],
					       int_bit, flags);
				int_sts &= ~int_bit;
			}
		}
	}
	if (int_sts & INT_BIT_ALL_OTHER_) {
		if (int_sts & INT_BIT_SW_GP_) {
			FUNC3(adapter);
			int_sts &= ~INT_BIT_SW_GP_;
		}
		if (int_sts & INT_BIT_1588_) {
			FUNC4(adapter);
			int_sts &= ~INT_BIT_1588_;
		}
	}
	if (int_sts)
		FUNC2(adapter, INT_EN_CLR, int_sts);
}