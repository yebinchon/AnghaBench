#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct i40e_vsi {int alloc_queue_pairs; int netdev_registered; int /*<<< orphan*/  netdev; } ;
struct TYPE_3__ {scalar_t__ num_vsis; } ;
struct TYPE_4__ {TYPE_1__ func_caps; } ;
struct i40e_pf {scalar_t__ num_alloc_vsi; int lan_vsi; int /*<<< orphan*/  pdev; int /*<<< orphan*/  service_timer; scalar_t__ service_timer_period; struct i40e_vsi** vsi; TYPE_2__ hw; int /*<<< orphan*/  state; int /*<<< orphan*/  service_task; } ;
struct i40e_hw {int /*<<< orphan*/  hw_addr; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ HZ ; 
 scalar_t__ I40E_MIN_VSI_ALLOC ; 
 int /*<<< orphan*/  I40E_VSI_MAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __I40E_SERVICE_SCHED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct i40e_vsi*) ; 
 int /*<<< orphan*/  FUNC4 (struct i40e_pf*) ; 
 int FUNC5 (struct i40e_pf*) ; 
 int /*<<< orphan*/  FUNC6 (struct i40e_pf*) ; 
 int /*<<< orphan*/  FUNC7 (struct i40e_pf*) ; 
 int /*<<< orphan*/  i40e_service_task ; 
 int /*<<< orphan*/  i40e_service_timer ; 
 int FUNC8 (struct i40e_pf*) ; 
 int /*<<< orphan*/  FUNC9 (struct i40e_hw*) ; 
 int FUNC10 (struct i40e_pf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 struct i40e_vsi** FUNC12 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct i40e_pf*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC22(struct i40e_pf *pf, struct i40e_hw *hw)
{
	struct i40e_vsi *vsi;
	int err;
	int v_idx;

	FUNC18(pf->pdev);

	/* set up periodic task facility */
	FUNC21(&pf->service_timer, i40e_service_timer, 0);
	pf->service_timer_period = HZ;

	FUNC0(&pf->service_task, i40e_service_task);
	FUNC1(__I40E_SERVICE_SCHED, pf->state);

	err = FUNC5(pf);
	if (err)
		goto err_switch_setup;

	/* The number of VSIs reported by the FW is the minimum guaranteed
	 * to us; HW supports far more and we share the remaining pool with
	 * the other PFs. We allocate space for more than the guarantee with
	 * the understanding that we might not get them all later.
	 */
	if (pf->hw.func_caps.num_vsis < I40E_MIN_VSI_ALLOC)
		pf->num_alloc_vsi = I40E_MIN_VSI_ALLOC;
	else
		pf->num_alloc_vsi = pf->hw.func_caps.num_vsis;

	/* Set up the vsi struct and our local tracking of the MAIN PF vsi. */
	pf->vsi = FUNC12(pf->num_alloc_vsi, sizeof(struct i40e_vsi *),
			  GFP_KERNEL);
	if (!pf->vsi) {
		err = -ENOMEM;
		goto err_switch_setup;
	}

	/* We allocate one VSI which is needed as absolute minimum
	 * in order to register the netdev
	 */
	v_idx = FUNC10(pf, I40E_VSI_MAIN);
	if (v_idx < 0)
		goto err_switch_setup;
	pf->lan_vsi = v_idx;
	vsi = pf->vsi[v_idx];
	if (!vsi)
		goto err_switch_setup;
	vsi->alloc_queue_pairs = 1;
	err = FUNC3(vsi);
	if (err)
		goto err_switch_setup;
	err = FUNC19(vsi->netdev);
	if (err)
		goto err_switch_setup;
	vsi->netdev_registered = true;
	FUNC4(pf);

	err = FUNC8(pf);
	if (err)
		goto err_switch_setup;

	/* tell the firmware that we're starting */
	FUNC7(pf);

	/* since everything's happy, start the service_task timer */
	FUNC14(&pf->service_timer,
		  FUNC20(jiffies + pf->service_timer_period));

	return 0;

err_switch_setup:
	FUNC6(pf);
	FUNC2(&pf->service_timer);
	FUNC9(hw);
	FUNC11(hw->hw_addr);
	FUNC16(pf->pdev);
	FUNC17(pf->pdev);
	FUNC15(pf->pdev);
	FUNC13(pf);

	return err;
}