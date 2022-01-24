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
struct sockaddr {int /*<<< orphan*/  sa_data; } ;
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct iavf_mac_filter {int remove; } ;
struct TYPE_2__ {int /*<<< orphan*/  addr; } ;
struct iavf_hw {TYPE_1__ mac; } ;
struct iavf_adapter {int /*<<< orphan*/  mac_vlan_list_lock; int /*<<< orphan*/  aq_required; struct iavf_hw hw; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IAVF_FLAG_AQ_DEL_MAC_FILTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct iavf_mac_filter* FUNC2 (struct iavf_adapter*,int /*<<< orphan*/ ) ; 
 struct iavf_mac_filter* FUNC3 (struct iavf_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct iavf_adapter* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct net_device *netdev, void *p)
{
	struct iavf_adapter *adapter = FUNC5(netdev);
	struct iavf_hw *hw = &adapter->hw;
	struct iavf_mac_filter *f;
	struct sockaddr *addr = p;

	if (!FUNC4(addr->sa_data))
		return -EADDRNOTAVAIL;

	if (FUNC1(netdev->dev_addr, addr->sa_data))
		return 0;

	FUNC6(&adapter->mac_vlan_list_lock);

	f = FUNC3(adapter, hw->mac.addr);
	if (f) {
		f->remove = true;
		adapter->aq_required |= IAVF_FLAG_AQ_DEL_MAC_FILTER;
	}

	f = FUNC2(adapter, addr->sa_data);

	FUNC7(&adapter->mac_vlan_list_lock);

	if (f) {
		FUNC0(hw->mac.addr, addr->sa_data);
	}

	return (f == NULL) ? -ENOMEM : 0;
}