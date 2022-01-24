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
struct device {int dummy; } ;
struct be_resources {scalar_t__ max_rss_qs; scalar_t__ max_rx_qs; int if_cap_flags; int max_nic_evt_qs; int max_evt_qs; int /*<<< orphan*/  member_0; } ;
struct be_adapter {int need_def_rxq; int /*<<< orphan*/  cfg_num_rx_irqs; int /*<<< orphan*/  cfg_num_tx_irqs; struct be_resources res; TYPE_1__* pdev; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int BE_IF_FLAGS_DEFQ_RSS ; 
 scalar_t__ FUNC0 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct be_adapter*,struct be_resources*) ; 
 int FUNC2 (struct be_adapter*,struct be_resources*) ; 
 int FUNC3 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC10 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC11 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC12 (struct be_adapter*) ; 
 scalar_t__ FUNC13 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC14 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  u16 ; 

__attribute__((used)) static int FUNC17(struct be_adapter *adapter)
{
	struct device *dev = &adapter->pdev->dev;
	struct be_resources res = {0};
	int status;

	/* For Lancer, SH etc read per-function resource limits from FW.
	 * GET_FUNC_CONFIG returns per function guaranteed limits.
	 * GET_PROFILE_CONFIG returns PCI-E related limits PF-pool limits
	 */
	if (FUNC0(adapter)) {
		FUNC1(adapter, &res);
	} else {
		status = FUNC2(adapter, &res);
		if (status)
			return status;

		/* If a deafault RXQ must be created, we'll use up one RSSQ*/
		if (res.max_rss_qs && res.max_rss_qs == res.max_rx_qs &&
		    !(res.if_cap_flags & BE_IF_FLAGS_DEFQ_RSS))
			res.max_rss_qs -= 1;
	}

	/* If RoCE is supported stash away half the EQs for RoCE */
	res.max_nic_evt_qs = FUNC13(adapter) ?
				res.max_evt_qs / 2 : res.max_evt_qs;
	adapter->res = res;

	/* If FW supports RSS default queue, then skip creating non-RSS
	 * queue for non-IP traffic.
	 */
	adapter->need_def_rxq = (FUNC3(adapter) &
				 BE_IF_FLAGS_DEFQ_RSS) ? 0 : 1;

	FUNC14(dev, "Max: txqs %d, rxqs %d, rss %d, eqs %d, vfs %d\n",
		 FUNC9(adapter), FUNC8(adapter),
		 FUNC7(adapter), FUNC5(adapter),
		 FUNC11(adapter));
	FUNC14(dev, "Max: uc-macs %d, mc-macs %d, vlans %d\n",
		 FUNC10(adapter), FUNC4(adapter),
		 FUNC12(adapter));

	/* Ensure RX and TX queues are created in pairs at init time */
	adapter->cfg_num_rx_irqs =
				FUNC15(u16, FUNC16(),
				      FUNC6(adapter));
	adapter->cfg_num_tx_irqs = adapter->cfg_num_rx_irqs;
	return 0;
}