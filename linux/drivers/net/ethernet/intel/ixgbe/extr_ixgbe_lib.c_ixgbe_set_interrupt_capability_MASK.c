#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int pg_tcs; int pfc_tcs; } ;
struct TYPE_13__ {int pfc_mode_enable; TYPE_5__ num_tcs; } ;
struct TYPE_11__ {int pfc_mode_enable; } ;
struct TYPE_9__ {int /*<<< orphan*/  requested_mode; } ;
struct TYPE_8__ {scalar_t__ type; } ;
struct TYPE_10__ {TYPE_2__ fc; TYPE_1__ mac; } ;
struct ixgbe_adapter {int hw_tcs; int num_q_vectors; int /*<<< orphan*/  flags; int /*<<< orphan*/  pdev; TYPE_7__* ring_feature; TYPE_6__ dcb_cfg; TYPE_4__ temp_dcb_cfg; int /*<<< orphan*/  last_lfc_mode; TYPE_3__ hw; int /*<<< orphan*/  netdev; } ;
struct TYPE_14__ {int limit; } ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_FLAG_DCB_ENABLED ; 
 int /*<<< orphan*/  IXGBE_FLAG_MSI_ENABLED ; 
 size_t RING_F_RSS ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_adapter*) ; 
 scalar_t__ ixgbe_mac_82598EB ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct ixgbe_adapter *adapter)
{
	int err;

	/* We will try to get MSI-X interrupts first */
	if (!FUNC1(adapter))
		return;

	/* At this point, we do not have MSI-X capabilities. We need to
	 * reconfigure or disable various features which require MSI-X
	 * capability.
	 */

	/* Disable DCB unless we only have a single traffic class */
	if (adapter->hw_tcs > 1) {
		FUNC0("Number of DCB TCs exceeds number of available queues. Disabling DCB support.\n");
		FUNC4(adapter->netdev);

		if (adapter->hw.mac.type == ixgbe_mac_82598EB)
			adapter->hw.fc.requested_mode = adapter->last_lfc_mode;

		adapter->flags &= ~IXGBE_FLAG_DCB_ENABLED;
		adapter->temp_dcb_cfg.pfc_mode_enable = false;
		adapter->dcb_cfg.pfc_mode_enable = false;
	}

	adapter->hw_tcs = 0;
	adapter->dcb_cfg.num_tcs.pg_tcs = 1;
	adapter->dcb_cfg.num_tcs.pfc_tcs = 1;

	/* Disable SR-IOV support */
	FUNC0("Disabling SR-IOV support\n");
	FUNC2(adapter);

	/* Disable RSS */
	FUNC0("Disabling RSS support\n");
	adapter->ring_feature[RING_F_RSS].limit = 1;

	/* recalculate number of queues now that many features have been
	 * changed or disabled.
	 */
	FUNC3(adapter);
	adapter->num_q_vectors = 1;

	err = FUNC5(adapter->pdev);
	if (err)
		FUNC0("Failed to allocate MSI interrupt, falling back to legacy. Error: %d\n",
			   err);
	else
		adapter->flags |= IXGBE_FLAG_MSI_ENABLED;
}