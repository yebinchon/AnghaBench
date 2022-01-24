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
struct igb_adapter {int /*<<< orphan*/  nfc_lock; } ;
struct ethtool_rxnfc {int /*<<< orphan*/  fs; } ;
struct ethtool_rx_flow_spec {int /*<<< orphan*/  location; } ;

/* Variables and functions */
 int FUNC0 (struct igb_adapter*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct igb_adapter *adapter,
				     struct ethtool_rxnfc *cmd)
{
	struct ethtool_rx_flow_spec *fsp =
		(struct ethtool_rx_flow_spec *)&cmd->fs;
	int err;

	FUNC1(&adapter->nfc_lock);
	err = FUNC0(adapter, NULL, fsp->location);
	FUNC2(&adapter->nfc_lock);

	return err;
}