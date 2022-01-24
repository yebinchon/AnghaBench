#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  void* u16 ;
struct i40e_vsi {int dummy; } ;
struct TYPE_18__ {int an_info; } ;
struct TYPE_19__ {TYPE_5__ link_info; } ;
struct TYPE_14__ {scalar_t__ asq_last_status; } ;
struct TYPE_13__ {scalar_t__ pf_id; TYPE_6__ phy; TYPE_1__ aq; } ;
struct i40e_pf {int flags; size_t lan_vsi; size_t lan_veb; int fc_autoneg_status; TYPE_10__ hw; TYPE_4__* pdev; TYPE_7__** vsi; int /*<<< orphan*/  main_vsi_seid; void* mac_seid; TYPE_2__** veb; void* last_sw_conf_valid_flags; void* last_sw_conf_flags; } ;
struct TYPE_16__ {scalar_t__ enabled_tc; } ;
struct TYPE_20__ {int /*<<< orphan*/  seid; TYPE_3__ tc_config; } ;
struct TYPE_17__ {int /*<<< orphan*/  dev; } ;
struct TYPE_15__ {void* seid; } ;

/* Variables and functions */
 int EAGAIN ; 
 int I40E_AQ_AN_COMPLETED ; 
 scalar_t__ I40E_AQ_RC_ESRCH ; 
 void* I40E_AQ_SET_SWITCH_CFG_PROMISC ; 
 int I40E_FLAG_RSS_ENABLED ; 
 int I40E_FLAG_TRUE_PROMISC_SUPPORT ; 
 size_t I40E_MAX_VEB ; 
 size_t I40E_NO_VSI ; 
 int /*<<< orphan*/  I40E_VSI_MAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC1 (TYPE_10__*,void*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_10__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct i40e_pf*) ; 
 int /*<<< orphan*/  FUNC4 (struct i40e_pf*) ; 
 int /*<<< orphan*/  FUNC5 (struct i40e_pf*) ; 
 int FUNC6 (struct i40e_pf*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct i40e_pf*) ; 
 int /*<<< orphan*/  FUNC8 (struct i40e_pf*) ; 
 int /*<<< orphan*/  FUNC9 (struct i40e_pf*) ; 
 int /*<<< orphan*/  FUNC10 (struct i40e_pf*) ; 
 int FUNC11 (struct i40e_pf*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_10__*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct i40e_pf*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_7__*,scalar_t__) ; 
 struct i40e_vsi* FUNC16 (TYPE_7__*) ; 
 struct i40e_vsi* FUNC17 (struct i40e_pf*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC18(struct i40e_pf *pf, bool reinit)
{
	u16 flags = 0;
	int ret;

	/* find out what's out there already */
	ret = FUNC6(pf, false);
	if (ret) {
		FUNC0(&pf->pdev->dev,
			 "couldn't fetch switch config, err %s aq_err %s\n",
			 FUNC12(&pf->hw, ret),
			 FUNC2(&pf->hw, pf->hw.aq.asq_last_status));
		return ret;
	}
	FUNC9(pf);

	/* set the switch config bit for the whole device to
	 * support limited promisc or true promisc
	 * when user requests promisc. The default is limited
	 * promisc.
	*/

	if ((pf->hw.pf_id == 0) &&
	    !(pf->flags & I40E_FLAG_TRUE_PROMISC_SUPPORT)) {
		flags = I40E_AQ_SET_SWITCH_CFG_PROMISC;
		pf->last_sw_conf_flags = flags;
	}

	if (pf->hw.pf_id == 0) {
		u16 valid_flags;

		valid_flags = I40E_AQ_SET_SWITCH_CFG_PROMISC;
		ret = FUNC1(&pf->hw, flags, valid_flags, 0,
						NULL);
		if (ret && pf->hw.aq.asq_last_status != I40E_AQ_RC_ESRCH) {
			FUNC0(&pf->pdev->dev,
				 "couldn't set switch config bits, err %s aq_err %s\n",
				 FUNC12(&pf->hw, ret),
				 FUNC2(&pf->hw,
					     pf->hw.aq.asq_last_status));
			/* not a fatal problem, just keep going */
		}
		pf->last_sw_conf_valid_flags = valid_flags;
	}

	/* first time setup */
	if (pf->lan_vsi == I40E_NO_VSI || reinit) {
		struct i40e_vsi *vsi = NULL;
		u16 uplink_seid;

		/* Set up the PF VSI associated with the PF's main VSI
		 * that is already in the HW switch
		 */
		if (pf->lan_veb < I40E_MAX_VEB && pf->veb[pf->lan_veb])
			uplink_seid = pf->veb[pf->lan_veb]->seid;
		else
			uplink_seid = pf->mac_seid;
		if (pf->lan_vsi == I40E_NO_VSI)
			vsi = FUNC17(pf, I40E_VSI_MAIN, uplink_seid, 0);
		else if (reinit)
			vsi = FUNC16(pf->vsi[pf->lan_vsi]);
		if (!vsi) {
			FUNC0(&pf->pdev->dev, "setup of MAIN VSI failed\n");
			FUNC3(pf);
			FUNC5(pf);
			return -EAGAIN;
		}
	} else {
		/* force a reset of TC and queue layout configurations */
		u8 enabled_tc = pf->vsi[pf->lan_vsi]->tc_config.enabled_tc;

		pf->vsi[pf->lan_vsi]->tc_config.enabled_tc = 0;
		pf->vsi[pf->lan_vsi]->seid = pf->main_vsi_seid;
		FUNC15(pf->vsi[pf->lan_vsi], enabled_tc);
	}
	FUNC14(pf->vsi[pf->lan_vsi]);

	FUNC4(pf);

	/* Setup static PF queue filter control settings */
	ret = FUNC11(pf);
	if (ret) {
		FUNC0(&pf->pdev->dev, "setup_pf_filter_control failed: %d\n",
			 ret);
		/* Failure here should not stop continuing other steps */
	}

	/* enable RSS in the HW, even for only one queue, as the stack can use
	 * the hash
	 */
	if ((pf->flags & I40E_FLAG_RSS_ENABLED))
		FUNC8(pf);

	/* fill in link information and enable LSE reporting */
	FUNC7(pf);

	/* Initialize user-specific link properties */
	pf->fc_autoneg_status = ((pf->hw.phy.link_info.an_info &
				  I40E_AQ_AN_COMPLETED) ? true : false);

	FUNC10(pf);

	/* repopulate tunnel port filters */
	FUNC13(pf);

	return ret;
}