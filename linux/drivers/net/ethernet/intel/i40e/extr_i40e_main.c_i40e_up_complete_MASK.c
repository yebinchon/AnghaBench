#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct i40e_vsi {scalar_t__ type; scalar_t__ netdev; int /*<<< orphan*/  state; struct i40e_pf* back; } ;
struct TYPE_4__ {int link_info; } ;
struct TYPE_5__ {TYPE_1__ link_info; } ;
struct TYPE_6__ {TYPE_2__ phy; } ;
struct i40e_pf {int flags; int /*<<< orphan*/  state; scalar_t__ fd_atr_cnt; scalar_t__ fd_add_err; TYPE_3__ hw; } ;

/* Variables and functions */
 int I40E_AQ_LINK_UP ; 
 int I40E_FLAG_MSIX_ENABLED ; 
 scalar_t__ I40E_VSI_FDIR ; 
 int /*<<< orphan*/  __I40E_CLIENT_SERVICE_REQUESTED ; 
 int /*<<< orphan*/  __I40E_VSI_DOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct i40e_vsi*) ; 
 int /*<<< orphan*/  FUNC2 (struct i40e_vsi*) ; 
 int /*<<< orphan*/  FUNC3 (struct i40e_vsi*) ; 
 int /*<<< orphan*/  FUNC4 (struct i40e_vsi*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct i40e_pf*) ; 
 int /*<<< orphan*/  FUNC6 (struct i40e_vsi*) ; 
 int /*<<< orphan*/  FUNC7 (struct i40e_vsi*) ; 
 int FUNC8 (struct i40e_vsi*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct i40e_vsi *vsi)
{
	struct i40e_pf *pf = vsi->back;
	int err;

	if (pf->flags & I40E_FLAG_MSIX_ENABLED)
		FUNC6(vsi);
	else
		FUNC1(vsi);

	/* start rings */
	err = FUNC8(vsi);
	if (err)
		return err;

	FUNC0(__I40E_VSI_DOWN, vsi->state);
	FUNC3(vsi);
	FUNC7(vsi);

	if ((pf->hw.phy.link_info.link_info & I40E_AQ_LINK_UP) &&
	    (vsi->netdev)) {
		FUNC4(vsi, true);
		FUNC10(vsi->netdev);
		FUNC9(vsi->netdev);
	}

	/* replay FDIR SB filters */
	if (vsi->type == I40E_VSI_FDIR) {
		/* reset fd counters */
		pf->fd_add_err = 0;
		pf->fd_atr_cnt = 0;
		FUNC2(vsi);
	}

	/* On the next run of the service_task, notify any clients of the new
	 * opened netdev
	 */
	FUNC11(__I40E_CLIENT_SERVICE_REQUESTED, pf->state);
	FUNC5(pf);

	return 0;
}