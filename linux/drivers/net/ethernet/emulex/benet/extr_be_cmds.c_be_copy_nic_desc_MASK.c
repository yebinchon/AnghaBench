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
struct be_resources {int if_cap_flags; void* max_mcc_count; void* max_iface_count; void* max_cq_count; void* max_evt_qs; void* max_rx_qs; void* max_rss_qs; void* max_tx_qs; void* max_mcast_mac; void* max_vlans; void* max_uc_mac; } ;
struct be_nic_res_desc {int /*<<< orphan*/  cap_flags; int /*<<< orphan*/  mcc_count; int /*<<< orphan*/  iface_count; int /*<<< orphan*/  cq_count; int /*<<< orphan*/  eq_count; int /*<<< orphan*/  rq_count; int /*<<< orphan*/  rssq_count; int /*<<< orphan*/  txq_count; int /*<<< orphan*/  mcast_mac_count; int /*<<< orphan*/  vlan_count; int /*<<< orphan*/  unicast_mac_count; } ;

/* Variables and functions */
 int BE_IF_CAP_FLAGS_WANT ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct be_resources *res,
			     struct be_nic_res_desc *desc)
{
	res->max_uc_mac = FUNC0(desc->unicast_mac_count);
	res->max_vlans = FUNC0(desc->vlan_count);
	res->max_mcast_mac = FUNC0(desc->mcast_mac_count);
	res->max_tx_qs = FUNC0(desc->txq_count);
	res->max_rss_qs = FUNC0(desc->rssq_count);
	res->max_rx_qs = FUNC0(desc->rq_count);
	res->max_evt_qs = FUNC0(desc->eq_count);
	res->max_cq_count = FUNC0(desc->cq_count);
	res->max_iface_count = FUNC0(desc->iface_count);
	res->max_mcc_count = FUNC0(desc->mcc_count);
	/* Clear flags that driver is not interested in */
	res->if_cap_flags = FUNC1(desc->cap_flags) &
				BE_IF_CAP_FLAGS_WANT;
}