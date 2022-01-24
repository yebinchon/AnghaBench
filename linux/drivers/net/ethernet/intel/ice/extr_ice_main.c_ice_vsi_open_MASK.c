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
struct ice_vsi {int /*<<< orphan*/  num_rxq; TYPE_2__* netdev; int /*<<< orphan*/  num_txq; struct ice_pf* back; } ;
struct ice_pf {TYPE_1__* pdev; } ;
typedef  int /*<<< orphan*/  int_name ;
struct TYPE_5__ {char* name; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ICE_INT_NAME_STR_LEN ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ice_vsi*) ; 
 int FUNC2 (struct ice_vsi*) ; 
 int FUNC3 (struct ice_vsi*) ; 
 int /*<<< orphan*/  FUNC4 (struct ice_vsi*) ; 
 int /*<<< orphan*/  FUNC5 (struct ice_vsi*) ; 
 int /*<<< orphan*/  FUNC6 (struct ice_vsi*) ; 
 int FUNC7 (struct ice_vsi*,char*) ; 
 int FUNC8 (struct ice_vsi*) ; 
 int FUNC9 (struct ice_vsi*) ; 
 int FUNC10 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*,char*,char*) ; 

__attribute__((used)) static int FUNC13(struct ice_vsi *vsi)
{
	char int_name[ICE_INT_NAME_STR_LEN];
	struct ice_pf *pf = vsi->back;
	int err;

	/* allocate descriptors */
	err = FUNC9(vsi);
	if (err)
		goto err_setup_tx;

	err = FUNC8(vsi);
	if (err)
		goto err_setup_rx;

	err = FUNC3(vsi);
	if (err)
		goto err_setup_rx;

	FUNC12(int_name, sizeof(int_name) - 1, "%s-%s",
		 FUNC0(&pf->pdev->dev), vsi->netdev->name);
	err = FUNC7(vsi, int_name);
	if (err)
		goto err_setup_rx;

	/* Notify the stack of the actual queue counts. */
	err = FUNC11(vsi->netdev, vsi->num_txq);
	if (err)
		goto err_set_qs;

	err = FUNC10(vsi->netdev, vsi->num_rxq);
	if (err)
		goto err_set_qs;

	err = FUNC2(vsi);
	if (err)
		goto err_up_complete;

	return 0;

err_up_complete:
	FUNC1(vsi);
err_set_qs:
	FUNC4(vsi);
err_setup_rx:
	FUNC5(vsi);
err_setup_tx:
	FUNC6(vsi);

	return err;
}