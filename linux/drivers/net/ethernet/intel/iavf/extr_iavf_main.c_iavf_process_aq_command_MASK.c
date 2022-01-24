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
struct iavf_adapter {int aq_required; } ;

/* Variables and functions */
 int EAGAIN ; 
 int FLAG_VF_MULTICAST_PROMISC ; 
 int FLAG_VF_UNICAST_PROMISC ; 
 int IAVF_FLAG_AQ_ADD_CLOUD_FILTER ; 
 int IAVF_FLAG_AQ_ADD_MAC_FILTER ; 
 int IAVF_FLAG_AQ_ADD_VLAN_FILTER ; 
 int IAVF_FLAG_AQ_CONFIGURE_QUEUES ; 
 int IAVF_FLAG_AQ_CONFIGURE_RSS ; 
 int IAVF_FLAG_AQ_DEL_CLOUD_FILTER ; 
 int IAVF_FLAG_AQ_DEL_MAC_FILTER ; 
 int IAVF_FLAG_AQ_DEL_VLAN_FILTER ; 
 int IAVF_FLAG_AQ_DISABLE_CHANNELS ; 
 int IAVF_FLAG_AQ_DISABLE_QUEUES ; 
 int IAVF_FLAG_AQ_DISABLE_VLAN_STRIPPING ; 
 int IAVF_FLAG_AQ_ENABLE_CHANNELS ; 
 int IAVF_FLAG_AQ_ENABLE_QUEUES ; 
 int IAVF_FLAG_AQ_ENABLE_VLAN_STRIPPING ; 
 int IAVF_FLAG_AQ_GET_CONFIG ; 
 int IAVF_FLAG_AQ_GET_HENA ; 
 int IAVF_FLAG_AQ_MAP_VECTORS ; 
 int IAVF_FLAG_AQ_RELEASE_ALLMULTI ; 
 int IAVF_FLAG_AQ_RELEASE_PROMISC ; 
 int IAVF_FLAG_AQ_REQUEST_ALLMULTI ; 
 int IAVF_FLAG_AQ_REQUEST_PROMISC ; 
 int IAVF_FLAG_AQ_SET_HENA ; 
 int IAVF_FLAG_AQ_SET_RSS_KEY ; 
 int IAVF_FLAG_AQ_SET_RSS_LUT ; 
 int /*<<< orphan*/  FUNC0 (struct iavf_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct iavf_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct iavf_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct iavf_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct iavf_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct iavf_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct iavf_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct iavf_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct iavf_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (struct iavf_adapter*) ; 
 int /*<<< orphan*/  FUNC10 (struct iavf_adapter*) ; 
 int /*<<< orphan*/  FUNC11 (struct iavf_adapter*) ; 
 int /*<<< orphan*/  FUNC12 (struct iavf_adapter*) ; 
 int /*<<< orphan*/  FUNC13 (struct iavf_adapter*) ; 
 int /*<<< orphan*/  FUNC14 (struct iavf_adapter*) ; 
 int FUNC15 (struct iavf_adapter*) ; 
 int /*<<< orphan*/  FUNC16 (struct iavf_adapter*) ; 
 int /*<<< orphan*/  FUNC17 (struct iavf_adapter*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct iavf_adapter*) ; 
 int /*<<< orphan*/  FUNC19 (struct iavf_adapter*) ; 

__attribute__((used)) static int FUNC20(struct iavf_adapter *adapter)
{
	if (adapter->aq_required & IAVF_FLAG_AQ_GET_CONFIG)
		return FUNC15(adapter);
	if (adapter->aq_required & IAVF_FLAG_AQ_DISABLE_QUEUES) {
		FUNC8(adapter);
		return 0;
	}

	if (adapter->aq_required & IAVF_FLAG_AQ_MAP_VECTORS) {
		FUNC14(adapter);
		return 0;
	}

	if (adapter->aq_required & IAVF_FLAG_AQ_ADD_MAC_FILTER) {
		FUNC1(adapter);
		return 0;
	}

	if (adapter->aq_required & IAVF_FLAG_AQ_ADD_VLAN_FILTER) {
		FUNC2(adapter);
		return 0;
	}

	if (adapter->aq_required & IAVF_FLAG_AQ_DEL_MAC_FILTER) {
		FUNC5(adapter);
		return 0;
	}

	if (adapter->aq_required & IAVF_FLAG_AQ_DEL_VLAN_FILTER) {
		FUNC6(adapter);
		return 0;
	}

	if (adapter->aq_required & IAVF_FLAG_AQ_ENABLE_VLAN_STRIPPING) {
		FUNC12(adapter);
		return 0;
	}

	if (adapter->aq_required & IAVF_FLAG_AQ_DISABLE_VLAN_STRIPPING) {
		FUNC9(adapter);
		return 0;
	}

	if (adapter->aq_required & IAVF_FLAG_AQ_CONFIGURE_QUEUES) {
		FUNC3(adapter);
		return 0;
	}

	if (adapter->aq_required & IAVF_FLAG_AQ_ENABLE_QUEUES) {
		FUNC11(adapter);
		return 0;
	}

	if (adapter->aq_required & IAVF_FLAG_AQ_CONFIGURE_RSS) {
		/* This message goes straight to the firmware, not the
		 * PF, so we don't have to set current_op as we will
		 * not get a response through the ARQ.
		 */
		adapter->aq_required &= ~IAVF_FLAG_AQ_CONFIGURE_RSS;
		return 0;
	}
	if (adapter->aq_required & IAVF_FLAG_AQ_GET_HENA) {
		FUNC13(adapter);
		return 0;
	}
	if (adapter->aq_required & IAVF_FLAG_AQ_SET_HENA) {
		FUNC16(adapter);
		return 0;
	}
	if (adapter->aq_required & IAVF_FLAG_AQ_SET_RSS_KEY) {
		FUNC18(adapter);
		return 0;
	}
	if (adapter->aq_required & IAVF_FLAG_AQ_SET_RSS_LUT) {
		FUNC19(adapter);
		return 0;
	}

	if (adapter->aq_required & IAVF_FLAG_AQ_REQUEST_PROMISC) {
		FUNC17(adapter, FLAG_VF_UNICAST_PROMISC |
				       FLAG_VF_MULTICAST_PROMISC);
		return 0;
	}

	if (adapter->aq_required & IAVF_FLAG_AQ_REQUEST_ALLMULTI) {
		FUNC17(adapter, FLAG_VF_MULTICAST_PROMISC);
		return 0;
	}

	if ((adapter->aq_required & IAVF_FLAG_AQ_RELEASE_PROMISC) &&
	    (adapter->aq_required & IAVF_FLAG_AQ_RELEASE_ALLMULTI)) {
		FUNC17(adapter, 0);
		return 0;
	}

	if (adapter->aq_required & IAVF_FLAG_AQ_ENABLE_CHANNELS) {
		FUNC10(adapter);
		return 0;
	}

	if (adapter->aq_required & IAVF_FLAG_AQ_DISABLE_CHANNELS) {
		FUNC7(adapter);
		return 0;
	}
	if (adapter->aq_required & IAVF_FLAG_AQ_ADD_CLOUD_FILTER) {
		FUNC0(adapter);
		return 0;
	}

	if (adapter->aq_required & IAVF_FLAG_AQ_DEL_CLOUD_FILTER) {
		FUNC4(adapter);
		return 0;
	}
	if (adapter->aq_required & IAVF_FLAG_AQ_DEL_CLOUD_FILTER) {
		FUNC4(adapter);
		return 0;
	}
	if (adapter->aq_required & IAVF_FLAG_AQ_ADD_CLOUD_FILTER) {
		FUNC0(adapter);
		return 0;
	}
	return -EAGAIN;
}