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
struct i40e_vsi {struct i40e_pf* back; } ;
struct i40e_pf {int /*<<< orphan*/  state; } ;
struct ethtool_rxnfc {int /*<<< orphan*/  fs; } ;
struct ethtool_rx_flow_spec {int /*<<< orphan*/  location; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  __I40E_FD_FLUSH_REQUESTED ; 
 int /*<<< orphan*/  __I40E_RESET_INTR_RECEIVED ; 
 int /*<<< orphan*/  __I40E_RESET_RECOVERY_PENDING ; 
 int /*<<< orphan*/  FUNC0 (struct i40e_pf*) ; 
 int /*<<< orphan*/  FUNC1 (struct i40e_pf*) ; 
 int FUNC2 (struct i40e_vsi*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ethtool_rxnfc*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct i40e_vsi *vsi,
			       struct ethtool_rxnfc *cmd)
{
	struct ethtool_rx_flow_spec *fsp =
		(struct ethtool_rx_flow_spec *)&cmd->fs;
	struct i40e_pf *pf = vsi->back;
	int ret = 0;

	if (FUNC3(__I40E_RESET_RECOVERY_PENDING, pf->state) ||
	    FUNC3(__I40E_RESET_INTR_RECEIVED, pf->state))
		return -EBUSY;

	if (FUNC3(__I40E_FD_FLUSH_REQUESTED, pf->state))
		return -EBUSY;

	ret = FUNC2(vsi, NULL, fsp->location, cmd);

	FUNC1(pf);

	FUNC0(pf);
	return ret;
}