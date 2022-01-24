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
struct i40e_vsi {scalar_t__ type; int /*<<< orphan*/  num_queue_pairs; TYPE_2__* netdev; struct i40e_pf* back; } ;
struct i40e_pf {size_t lan_vsi; struct i40e_vsi** vsi; TYPE_1__* pdev; } ;
typedef  int /*<<< orphan*/  int_name ;
struct TYPE_5__ {char* name; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int I40E_INT_NAME_STR_LEN ; 
 int /*<<< orphan*/  I40E_PF_RESET_FLAG ; 
 scalar_t__ I40E_VSI_FDIR ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct i40e_pf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct i40e_vsi*) ; 
 int FUNC4 (struct i40e_vsi*) ; 
 int FUNC5 (struct i40e_vsi*) ; 
 int /*<<< orphan*/  FUNC6 (struct i40e_vsi*) ; 
 int /*<<< orphan*/  FUNC7 (struct i40e_vsi*) ; 
 int /*<<< orphan*/  FUNC8 (struct i40e_vsi*) ; 
 int FUNC9 (struct i40e_vsi*,char*) ; 
 int FUNC10 (struct i40e_vsi*) ; 
 int FUNC11 (struct i40e_vsi*) ; 
 int FUNC12 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC13 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,char*,char*,char*) ; 

int FUNC15(struct i40e_vsi *vsi)
{
	struct i40e_pf *pf = vsi->back;
	char int_name[I40E_INT_NAME_STR_LEN];
	int err;

	/* allocate descriptors */
	err = FUNC11(vsi);
	if (err)
		goto err_setup_tx;
	err = FUNC10(vsi);
	if (err)
		goto err_setup_rx;

	err = FUNC5(vsi);
	if (err)
		goto err_setup_rx;

	if (vsi->netdev) {
		FUNC14(int_name, sizeof(int_name) - 1, "%s-%s",
			 FUNC0(&pf->pdev->dev), vsi->netdev->name);
		err = FUNC9(vsi, int_name);
		if (err)
			goto err_setup_rx;

		/* Notify the stack of the actual queue counts. */
		err = FUNC13(vsi->netdev,
						   vsi->num_queue_pairs);
		if (err)
			goto err_set_queues;

		err = FUNC12(vsi->netdev,
						   vsi->num_queue_pairs);
		if (err)
			goto err_set_queues;

	} else if (vsi->type == I40E_VSI_FDIR) {
		FUNC14(int_name, sizeof(int_name) - 1, "%s-%s:fdir",
			 FUNC0(&pf->pdev->dev),
			 FUNC1(&pf->pdev->dev));
		err = FUNC9(vsi, int_name);

	} else {
		err = -EINVAL;
		goto err_setup_rx;
	}

	err = FUNC4(vsi);
	if (err)
		goto err_up_complete;

	return 0;

err_up_complete:
	FUNC3(vsi);
err_set_queues:
	FUNC6(vsi);
err_setup_rx:
	FUNC7(vsi);
err_setup_tx:
	FUNC8(vsi);
	if (vsi == pf->vsi[pf->lan_vsi])
		FUNC2(pf, I40E_PF_RESET_FLAG, true);

	return err;
}