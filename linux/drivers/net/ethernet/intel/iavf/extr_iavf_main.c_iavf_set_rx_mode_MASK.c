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
struct net_device {int flags; } ;
struct iavf_adapter {int flags; int /*<<< orphan*/  aq_required; int /*<<< orphan*/  mac_vlan_list_lock; } ;

/* Variables and functions */
 int IAVF_FLAG_ALLMULTI_ON ; 
 int /*<<< orphan*/  IAVF_FLAG_AQ_RELEASE_ALLMULTI ; 
 int /*<<< orphan*/  IAVF_FLAG_AQ_RELEASE_PROMISC ; 
 int /*<<< orphan*/  IAVF_FLAG_AQ_REQUEST_ALLMULTI ; 
 int /*<<< orphan*/  IAVF_FLAG_AQ_REQUEST_PROMISC ; 
 int IAVF_FLAG_PROMISC_ON ; 
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iavf_addr_sync ; 
 int /*<<< orphan*/  iavf_addr_unsync ; 
 struct iavf_adapter* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct net_device *netdev)
{
	struct iavf_adapter *adapter = FUNC2(netdev);

	FUNC3(&adapter->mac_vlan_list_lock);
	FUNC1(netdev, iavf_addr_sync, iavf_addr_unsync);
	FUNC0(netdev, iavf_addr_sync, iavf_addr_unsync);
	FUNC4(&adapter->mac_vlan_list_lock);

	if (netdev->flags & IFF_PROMISC &&
	    !(adapter->flags & IAVF_FLAG_PROMISC_ON))
		adapter->aq_required |= IAVF_FLAG_AQ_REQUEST_PROMISC;
	else if (!(netdev->flags & IFF_PROMISC) &&
		 adapter->flags & IAVF_FLAG_PROMISC_ON)
		adapter->aq_required |= IAVF_FLAG_AQ_RELEASE_PROMISC;

	if (netdev->flags & IFF_ALLMULTI &&
	    !(adapter->flags & IAVF_FLAG_ALLMULTI_ON))
		adapter->aq_required |= IAVF_FLAG_AQ_REQUEST_ALLMULTI;
	else if (!(netdev->flags & IFF_ALLMULTI) &&
		 adapter->flags & IAVF_FLAG_ALLMULTI_ON)
		adapter->aq_required |= IAVF_FLAG_AQ_RELEASE_ALLMULTI;
}