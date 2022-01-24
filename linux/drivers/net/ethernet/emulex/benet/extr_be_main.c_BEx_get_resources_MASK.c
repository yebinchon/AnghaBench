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
struct be_resources {int max_vlans; int max_tx_qs; int max_evt_qs; int /*<<< orphan*/  if_cap_flags; scalar_t__ max_rss_qs; scalar_t__ max_rx_qs; int /*<<< orphan*/  member_0; int /*<<< orphan*/  max_mcast_mac; int /*<<< orphan*/  max_uc_mac; } ;
struct be_adapter {int port_num; int function_caps; scalar_t__ be3_native; int /*<<< orphan*/  function_mode; int /*<<< orphan*/  mc_type; scalar_t__ num_vfs; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACTIVE_PROFILE_TYPE ; 
 scalar_t__ BE2_MAX_RSS_QS ; 
 scalar_t__ FUNC0 (struct be_adapter*) ; 
 int BE3_MAX_EVT_QS ; 
 scalar_t__ BE3_MAX_RSS_QS ; 
 void* BE3_MAX_TX_QS ; 
 int BE3_SRIOV_MAX_EVT_QS ; 
 int BE_FUNCTION_CAPS_RSS ; 
 int BE_FUNCTION_CAPS_SUPER_NIC ; 
 int /*<<< orphan*/  BE_IF_CAP_FLAGS_WANT ; 
 int /*<<< orphan*/  BE_IF_FLAGS_DEFQ_RSS ; 
 int /*<<< orphan*/  BE_IF_FLAGS_RSS ; 
 int /*<<< orphan*/  BE_MAX_MC ; 
 int BE_NUM_VLANS_SUPPORTED ; 
 int /*<<< orphan*/  BE_UC_PMAC_COUNT ; 
 int /*<<< orphan*/  BE_VF_UC_PMAC_COUNT ; 
 int /*<<< orphan*/  RESOURCE_LIMITS ; 
 int /*<<< orphan*/  FUNC1 (struct be_adapter*,struct be_resources*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct be_adapter*) ; 
 scalar_t__ FUNC4 (struct be_adapter*) ; 
 scalar_t__ FUNC5 (struct be_adapter*) ; 
 scalar_t__ FUNC6 (struct be_adapter*) ; 
 scalar_t__ FUNC7 (struct be_adapter*) ; 

__attribute__((used)) static void FUNC8(struct be_adapter *adapter,
			      struct be_resources *res)
{
	bool use_sriov = adapter->num_vfs ? 1 : 0;

	if (FUNC6(adapter))
		res->max_uc_mac = BE_UC_PMAC_COUNT;
	else
		res->max_uc_mac = BE_VF_UC_PMAC_COUNT;

	adapter->mc_type = FUNC2(adapter->function_mode);

	if (FUNC3(adapter)) {
		/* Assuming that there are 4 channels per port,
		 * when multi-channel is enabled
		 */
		if (FUNC4(adapter))
			res->max_vlans = BE_NUM_VLANS_SUPPORTED/8;
		else
			/* In a non-qnq multichannel mode, the pvid
			 * takes up one vlan entry
			 */
			res->max_vlans = (BE_NUM_VLANS_SUPPORTED / 4) - 1;
	} else {
		res->max_vlans = BE_NUM_VLANS_SUPPORTED;
	}

	res->max_mcast_mac = BE_MAX_MC;

	/* 1) For BE3 1Gb ports, FW does not support multiple TXQs
	 * 2) Create multiple TX rings on a BE3-R multi-channel interface
	 *    *only* if it is RSS-capable.
	 */
	if (FUNC0(adapter) || use_sriov ||  (adapter->port_num > 1) ||
	    FUNC7(adapter) ||
	    (FUNC3(adapter) &&
	     !(adapter->function_caps & BE_FUNCTION_CAPS_RSS))) {
		res->max_tx_qs = 1;
	} else if (adapter->function_caps & BE_FUNCTION_CAPS_SUPER_NIC) {
		struct be_resources super_nic_res = {0};

		/* On a SuperNIC profile, the driver needs to use the
		 * GET_PROFILE_CONFIG cmd to query the per-function TXQ limits
		 */
		FUNC1(adapter, &super_nic_res, NULL,
					  ACTIVE_PROFILE_TYPE, RESOURCE_LIMITS,
					  0);
		/* Some old versions of BE3 FW don't report max_tx_qs value */
		res->max_tx_qs = super_nic_res.max_tx_qs ? : BE3_MAX_TX_QS;
	} else {
		res->max_tx_qs = BE3_MAX_TX_QS;
	}

	if ((adapter->function_caps & BE_FUNCTION_CAPS_RSS) &&
	    !use_sriov && FUNC6(adapter))
		res->max_rss_qs = (adapter->be3_native) ?
					   BE3_MAX_RSS_QS : BE2_MAX_RSS_QS;
	res->max_rx_qs = res->max_rss_qs + 1;

	if (FUNC6(adapter))
		res->max_evt_qs = (FUNC5(adapter) > 0) ?
					BE3_SRIOV_MAX_EVT_QS : BE3_MAX_EVT_QS;
	else
		res->max_evt_qs = 1;

	res->if_cap_flags = BE_IF_CAP_FLAGS_WANT;
	res->if_cap_flags &= ~BE_IF_FLAGS_DEFQ_RSS;
	if (!(adapter->function_caps & BE_FUNCTION_CAPS_RSS))
		res->if_cap_flags &= ~BE_IF_FLAGS_RSS;
}