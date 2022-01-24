#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ice_vsi {TYPE_2__* netdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  port_info; } ;
struct ice_pf {TYPE_1__ hw; int /*<<< orphan*/  state; } ;
struct TYPE_5__ {scalar_t__ reg_state; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 scalar_t__ NETREG_REGISTERED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int FUNC1 (struct ice_vsi*) ; 
 int FUNC2 (struct ice_pf*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ice_vsi*) ; 
 int /*<<< orphan*/  FUNC5 (struct ice_vsi*) ; 
 struct ice_vsi* FUNC6 (struct ice_pf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ice_vsi*) ; 
 int /*<<< orphan*/  FUNC8 (struct ice_vsi*) ; 
 int /*<<< orphan*/  FUNC9 (struct ice_vsi*) ; 
 int /*<<< orphan*/  FUNC10 (struct ice_vsi*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC12(struct ice_pf *pf)
{
	struct ice_vsi *vsi;
	int status = 0;

	if (FUNC3(pf->state))
		return -EBUSY;

	vsi = FUNC6(pf, pf->hw.port_info);
	if (!vsi) {
		status = -ENOMEM;
		goto unroll_vsi_setup;
	}

	status = FUNC1(vsi);
	if (status) {
		status = -ENODEV;
		goto unroll_vsi_setup;
	}

	/* registering the NAPI handler requires both the queues and
	 * netdev to be created, which are done in ice_pf_vsi_setup()
	 * and ice_cfg_netdev() respectively
	 */
	FUNC4(vsi);

	status = FUNC2(pf);
	if (status)
		goto unroll_napi_add;

	return status;

unroll_napi_add:
	if (vsi) {
		FUNC5(vsi);
		if (vsi->netdev) {
			if (vsi->netdev->reg_state == NETREG_REGISTERED)
				FUNC11(vsi->netdev);
			FUNC0(vsi->netdev);
			vsi->netdev = NULL;
		}
	}

unroll_vsi_setup:
	if (vsi) {
		FUNC9(vsi);
		FUNC8(vsi);
		FUNC10(vsi);
		FUNC7(vsi);
	}
	return status;
}