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
typedef  size_t u32 ;
struct net_device {int dummy; } ;
struct ice_vsi {struct ice_pf* back; } ;
struct ice_priv_flag {int /*<<< orphan*/  bitno; } ;
struct ice_pf {int /*<<< orphan*/  flags; TYPE_1__* pdev; int /*<<< orphan*/  hw; } ;
struct ice_netdev_priv {struct ice_vsi* vsi; } ;
typedef  enum ice_status { ____Placeholder_ice_status } ice_status ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 size_t FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  ICE_FLAG_ETHTOOL_CTXT ; 
 int /*<<< orphan*/  ICE_FLAG_FW_LLDP_AGENT ; 
 int /*<<< orphan*/  ICE_PF_FLAGS_NBITS ; 
 size_t ICE_PRIV_FLAG_ARRAY_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  change_flags ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int,int*,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (struct ice_vsi*,int,int) ; 
 struct ice_priv_flag* ice_gstrings_priv_flags ; 
 int FUNC13 (struct ice_pf*,int) ; 
 struct ice_netdev_priv* FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  orig_flags ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct net_device *netdev, u32 flags)
{
	struct ice_netdev_priv *np = FUNC14(netdev);
	FUNC1(change_flags, ICE_PF_FLAGS_NBITS);
	FUNC1(orig_flags, ICE_PF_FLAGS_NBITS);
	struct ice_vsi *vsi = np->vsi;
	struct ice_pf *pf = vsi->back;
	int ret = 0;
	u32 i;

	if (flags > FUNC0(ICE_PRIV_FLAG_ARRAY_SIZE))
		return -EINVAL;

	FUNC15(ICE_FLAG_ETHTOOL_CTXT, pf->flags);

	FUNC2(orig_flags, pf->flags, ICE_PF_FLAGS_NBITS);
	for (i = 0; i < ICE_PRIV_FLAG_ARRAY_SIZE; i++) {
		const struct ice_priv_flag *priv_flag;

		priv_flag = &ice_gstrings_priv_flags[i];

		if (flags & FUNC0(i))
			FUNC15(priv_flag->bitno, pf->flags);
		else
			FUNC4(priv_flag->bitno, pf->flags);
	}

	FUNC3(change_flags, pf->flags, orig_flags, ICE_PF_FLAGS_NBITS);

	if (FUNC16(ICE_FLAG_FW_LLDP_AGENT, change_flags)) {
		if (!FUNC16(ICE_FLAG_FW_LLDP_AGENT, pf->flags)) {
			enum ice_status status;

			/* Disable FW LLDP engine */
			status = FUNC11(&pf->hw, false);

			/* If unregistering for LLDP events fails, this is
			 * not an error state, as there shouldn't be any
			 * events to respond to.
			 */
			if (status)
				FUNC6(&pf->pdev->dev,
					 "Failed to unreg for LLDP events\n");

			/* The AQ call to stop the FW LLDP agent will generate
			 * an error if the agent is already stopped.
			 */
			status = FUNC10(&pf->hw, true, true, NULL);
			if (status)
				FUNC7(&pf->pdev->dev,
					 "Fail to stop LLDP agent\n");
			/* Use case for having the FW LLDP agent stopped
			 * will likely not need DCB, so failure to init is
			 * not a concern of ethtool
			 */
			status = FUNC13(pf, true);
			if (status)
				FUNC7(&pf->pdev->dev, "Fail to init DCB\n");

			/* Forward LLDP packets to default VSI so that they
			 * are passed up the stack
			 */
			FUNC12(vsi, false, true);
		} else {
			enum ice_status status;
			bool dcbx_agent_status;

			/* AQ command to start FW LLDP agent will return an
			 * error if the agent is already started
			 */
			status = FUNC8(&pf->hw, true, NULL);
			if (status)
				FUNC7(&pf->pdev->dev,
					 "Fail to start LLDP Agent\n");

			/* AQ command to start FW DCBX agent will fail if
			 * the agent is already started
			 */
			status = FUNC9(&pf->hw, true,
							&dcbx_agent_status,
							NULL);
			if (status)
				FUNC5(&pf->pdev->dev,
					"Failed to start FW DCBX\n");

			FUNC6(&pf->pdev->dev, "FW DCBX agent is %s\n",
				 dcbx_agent_status ? "ACTIVE" : "DISABLED");

			/* Failure to configure MIB change or init DCB is not
			 * relevant to ethtool.  Print notification that
			 * registration/init failed but do not return error
			 * state to ethtool
			 */
			status = FUNC13(pf, true);
			if (status)
				FUNC5(&pf->pdev->dev, "Fail to init DCB\n");

			/* Remove rule to direct LLDP packets to default VSI.
			 * The FW LLDP engine will now be consuming them.
			 */
			FUNC12(vsi, false, false);

			/* Register for MIB change events */
			status = FUNC11(&pf->hw, true);
			if (status)
				FUNC5(&pf->pdev->dev,
					"Fail to enable MIB change events\n");
		}
	}
	FUNC4(ICE_FLAG_ETHTOOL_CTXT, pf->flags);
	return ret;
}