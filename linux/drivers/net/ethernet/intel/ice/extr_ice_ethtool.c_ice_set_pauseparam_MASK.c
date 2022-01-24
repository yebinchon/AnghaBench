#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct ice_vsi {scalar_t__ type; struct ice_port_info* port_info; struct ice_pf* back; } ;
struct TYPE_7__ {int /*<<< orphan*/  req_mode; } ;
struct TYPE_6__ {scalar_t__ pfcena; } ;
struct ice_dcbx_cfg {TYPE_2__ pfc; } ;
struct ice_link_status {int link_info; int an_info; } ;
struct TYPE_5__ {struct ice_link_status link_info; } ;
struct ice_port_info {TYPE_3__ fc; struct ice_dcbx_cfg local_dcbx_cfg; TYPE_1__ phy; } ;
struct TYPE_8__ {int /*<<< orphan*/  sq_last_status; } ;
struct ice_hw {TYPE_4__ adminq; } ;
struct ice_pf {int /*<<< orphan*/  state; struct ice_hw hw; } ;
struct ice_netdev_priv {struct ice_vsi* vsi; } ;
struct ice_aqc_get_phy_caps_data {int caps; } ;
struct ethtool_pauseparam {scalar_t__ autoneg; scalar_t__ tx_pause; scalar_t__ rx_pause; } ;
typedef  enum ice_status { ____Placeholder_ice_status } ice_status ;

/* Variables and functions */
 scalar_t__ AUTONEG_DISABLE ; 
 scalar_t__ AUTONEG_ENABLE ; 
 int EAGAIN ; 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int ICE_AQC_PHY_AN_MODE ; 
 int /*<<< orphan*/  ICE_AQC_REPORT_SW_CFG ; 
 int ICE_AQ_AN_COMPLETED ; 
 int ICE_AQ_LINK_UP ; 
 int /*<<< orphan*/  ICE_FC_FULL ; 
 int /*<<< orphan*/  ICE_FC_NONE ; 
 int /*<<< orphan*/  ICE_FC_RX_PAUSE ; 
 int /*<<< orphan*/  ICE_FC_TX_PAUSE ; 
 int ICE_SET_FC_AQ_FAIL_GET ; 
 int ICE_SET_FC_AQ_FAIL_SET ; 
 int ICE_SET_FC_AQ_FAIL_UPDATE ; 
 scalar_t__ ICE_VSI_PF ; 
 int /*<<< orphan*/  __ICE_DOWN ; 
 int FUNC0 (struct ice_port_info*,int,int /*<<< orphan*/ ,struct ice_aqc_get_phy_caps_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ice_vsi*) ; 
 int FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct ice_vsi*,int) ; 
 int FUNC4 (struct ice_port_info*,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ice_vsi*) ; 
 int /*<<< orphan*/  FUNC6 (struct ice_aqc_get_phy_caps_data*) ; 
 struct ice_aqc_get_phy_caps_data* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,char*,...) ; 
 struct ice_netdev_priv* FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC14(struct net_device *netdev, struct ethtool_pauseparam *pause)
{
	struct ice_netdev_priv *np = FUNC10(netdev);
	struct ice_aqc_get_phy_caps_data *pcaps;
	struct ice_link_status *hw_link_info;
	struct ice_pf *pf = np->vsi->back;
	struct ice_dcbx_cfg *dcbx_cfg;
	struct ice_vsi *vsi = np->vsi;
	struct ice_hw *hw = &pf->hw;
	struct ice_port_info *pi;
	enum ice_status status;
	u8 aq_failures;
	bool link_up;
	int err = 0;
	u32 is_an;

	pi = vsi->port_info;
	hw_link_info = &pi->phy.link_info;
	dcbx_cfg = &pi->local_dcbx_cfg;
	link_up = hw_link_info->link_info & ICE_AQ_LINK_UP;

	/* Changing the port's flow control is not supported if this isn't the
	 * PF VSI
	 */
	if (vsi->type != ICE_VSI_PF) {
		FUNC9(netdev, "Changing flow control parameters only supported for PF VSI\n");
		return -EOPNOTSUPP;
	}

	/* Get pause param reports configured and negotiated flow control pause
	 * when ETHTOOL_GLINKSETTINGS is defined. Since ETHTOOL_GLINKSETTINGS is
	 * defined get pause param pause->autoneg reports SW configured setting,
	 * so compare pause->autoneg with SW configured to prevent the user from
	 * using set pause param to chance autoneg.
	 */
	pcaps = FUNC7(sizeof(*pcaps), GFP_KERNEL);
	if (!pcaps)
		return -ENOMEM;

	/* Get current PHY config */
	status = FUNC0(pi, false, ICE_AQC_REPORT_SW_CFG, pcaps,
				     NULL);
	if (status) {
		FUNC6(pcaps);
		return -EIO;
	}

	is_an = ((pcaps->caps & ICE_AQC_PHY_AN_MODE) ?
			AUTONEG_ENABLE : AUTONEG_DISABLE);

	FUNC6(pcaps);

	if (pause->autoneg != is_an) {
		FUNC9(netdev, "To change autoneg please use: ethtool -s <dev> autoneg <on|off>\n");
		return -EOPNOTSUPP;
	}

	/* If we have link and don't have autoneg */
	if (!FUNC13(__ICE_DOWN, pf->state) &&
	    !(hw_link_info->an_info & ICE_AQ_AN_COMPLETED)) {
		/* Send message that it might not necessarily work*/
		FUNC9(netdev, "Autoneg did not complete so changing settings may not result in an actual change.\n");
	}

	if (dcbx_cfg->pfc.pfcena) {
		FUNC9(netdev, "Priority flow control enabled. Cannot set link flow control.\n");
		return -EOPNOTSUPP;
	}
	if (pause->rx_pause && pause->tx_pause)
		pi->fc.req_mode = ICE_FC_FULL;
	else if (pause->rx_pause && !pause->tx_pause)
		pi->fc.req_mode = ICE_FC_RX_PAUSE;
	else if (!pause->rx_pause && pause->tx_pause)
		pi->fc.req_mode = ICE_FC_TX_PAUSE;
	else if (!pause->rx_pause && !pause->tx_pause)
		pi->fc.req_mode = ICE_FC_NONE;
	else
		return -EINVAL;

	/* Tell the OS link is going down, the link will go back up when fw
	 * says it is ready asynchronously
	 */
	FUNC3(vsi, false);
	FUNC11(netdev);
	FUNC12(netdev);

	/* Set the FC mode and only restart AN if link is up */
	status = FUNC4(pi, &aq_failures, link_up);

	if (aq_failures & ICE_SET_FC_AQ_FAIL_GET) {
		FUNC9(netdev, "Set fc failed on the get_phy_capabilities call with err %d aq_err %d\n",
			    status, hw->adminq.sq_last_status);
		err = -EAGAIN;
	} else if (aq_failures & ICE_SET_FC_AQ_FAIL_SET) {
		FUNC9(netdev, "Set fc failed on the set_phy_config call with err %d aq_err %d\n",
			    status, hw->adminq.sq_last_status);
		err = -EAGAIN;
	} else if (aq_failures & ICE_SET_FC_AQ_FAIL_UPDATE) {
		FUNC9(netdev, "Set fc failed on the get_link_info call with err %d aq_err %d\n",
			    status, hw->adminq.sq_last_status);
		err = -EAGAIN;
	}

	if (!FUNC13(__ICE_DOWN, pf->state)) {
		/* Give it a little more time to try to come back. If still
		 * down, restart autoneg link or reinitialize the interface.
		 */
		FUNC8(75);
		if (!FUNC13(__ICE_DOWN, pf->state))
			return FUNC2(netdev);

		FUNC1(vsi);
		FUNC5(vsi);
	}

	return err;
}