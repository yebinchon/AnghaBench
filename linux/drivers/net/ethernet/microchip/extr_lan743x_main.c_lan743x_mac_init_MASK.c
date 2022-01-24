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
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct lan743x_adapter {int* mac_address; struct net_device* netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAC_CR ; 
 int MAC_CR_ADD_ ; 
 int MAC_CR_ASD_ ; 
 int MAC_CR_CNTR_RST_ ; 
 int /*<<< orphan*/  MAC_RX_ADDRH ; 
 int /*<<< orphan*/  MAC_RX_ADDRL ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int FUNC3 (struct lan743x_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct lan743x_adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct lan743x_adapter*,int*) ; 

__attribute__((used)) static int FUNC6(struct lan743x_adapter *adapter)
{
	bool mac_address_valid = true;
	struct net_device *netdev;
	u32 mac_addr_hi = 0;
	u32 mac_addr_lo = 0;
	u32 data;

	netdev = adapter->netdev;

	/* setup auto duplex, and speed detection */
	data = FUNC3(adapter, MAC_CR);
	data |= MAC_CR_ADD_ | MAC_CR_ASD_;
	data |= MAC_CR_CNTR_RST_;
	FUNC4(adapter, MAC_CR, data);

	mac_addr_hi = FUNC3(adapter, MAC_RX_ADDRH);
	mac_addr_lo = FUNC3(adapter, MAC_RX_ADDRL);
	adapter->mac_address[0] = mac_addr_lo & 0xFF;
	adapter->mac_address[1] = (mac_addr_lo >> 8) & 0xFF;
	adapter->mac_address[2] = (mac_addr_lo >> 16) & 0xFF;
	adapter->mac_address[3] = (mac_addr_lo >> 24) & 0xFF;
	adapter->mac_address[4] = mac_addr_hi & 0xFF;
	adapter->mac_address[5] = (mac_addr_hi >> 8) & 0xFF;

	if (((mac_addr_hi & 0x0000FFFF) == 0x0000FFFF) &&
	    mac_addr_lo == 0xFFFFFFFF) {
		mac_address_valid = false;
	} else if (!FUNC2(adapter->mac_address)) {
		mac_address_valid = false;
	}

	if (!mac_address_valid)
		FUNC0(adapter->mac_address);
	FUNC5(adapter, adapter->mac_address);
	FUNC1(netdev->dev_addr, adapter->mac_address);
	return 0;
}