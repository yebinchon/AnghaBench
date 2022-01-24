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
struct lan743x_adapter {int dummy; } ;

/* Variables and functions */
 int ETH_HLEN ; 
 int /*<<< orphan*/  MAC_RX ; 
 int MAC_RX_MAX_SIZE_MASK_ ; 
 int MAC_RX_MAX_SIZE_SHIFT_ ; 
 int MAC_RX_RXD_ ; 
 int MAC_RX_RXEN_ ; 
 int FUNC0 (struct lan743x_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lan743x_adapter*,int /*<<< orphan*/ ,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct lan743x_adapter*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct lan743x_adapter *adapter, int new_mtu)
{
	int enabled = 0;
	u32 mac_rx = 0;

	mac_rx = FUNC0(adapter, MAC_RX);
	if (mac_rx & MAC_RX_RXEN_) {
		enabled = 1;
		if (mac_rx & MAC_RX_RXD_) {
			FUNC2(adapter, MAC_RX, mac_rx);
			mac_rx &= ~MAC_RX_RXD_;
		}
		mac_rx &= ~MAC_RX_RXEN_;
		FUNC2(adapter, MAC_RX, mac_rx);
		FUNC1(adapter, MAC_RX, MAC_RX_RXD_,
					 1, 1000, 20000, 100);
		FUNC2(adapter, MAC_RX, mac_rx | MAC_RX_RXD_);
	}

	mac_rx &= ~(MAC_RX_MAX_SIZE_MASK_);
	mac_rx |= (((new_mtu + ETH_HLEN + 4) << MAC_RX_MAX_SIZE_SHIFT_) &
		  MAC_RX_MAX_SIZE_MASK_);
	FUNC2(adapter, MAC_RX, mac_rx);

	if (enabled) {
		mac_rx |= MAC_RX_RXEN_;
		FUNC2(adapter, MAC_RX, mac_rx);
	}
	return 0;
}