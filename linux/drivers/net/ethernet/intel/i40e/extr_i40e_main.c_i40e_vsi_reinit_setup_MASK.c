#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int u16 ;
struct i40e_vsi {int base_queue; int alloc_queue_pairs; scalar_t__ type; int netdev_registered; int /*<<< orphan*/  seid; int /*<<< orphan*/ * netdev; int /*<<< orphan*/  idx; struct i40e_pf* back; } ;
struct TYPE_8__ {int /*<<< orphan*/  perm_addr; } ;
struct TYPE_10__ {TYPE_3__ mac; } ;
struct i40e_pf {size_t lan_vsi; TYPE_5__ hw; TYPE_4__** vsi; int /*<<< orphan*/  main_vsi_seid; TYPE_1__* pdev; int /*<<< orphan*/  qp_pile; } ;
struct TYPE_7__ {scalar_t__ enabled_tc; } ;
struct TYPE_9__ {int /*<<< orphan*/  seid; TYPE_2__ tc_config; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ I40E_VSI_MAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct i40e_vsi*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct i40e_vsi*) ; 
 int FUNC5 (struct i40e_pf*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct i40e_vsi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct i40e_vsi*) ; 
 int FUNC9 (struct i40e_vsi*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct i40e_vsi*) ; 
 int /*<<< orphan*/  FUNC11 (struct i40e_vsi*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct i40e_vsi*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct i40e_vsi*) ; 
 int /*<<< orphan*/  FUNC15 (struct i40e_vsi*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct i40e_vsi *FUNC17(struct i40e_vsi *vsi)
{
	u16 alloc_queue_pairs;
	struct i40e_pf *pf;
	u8 enabled_tc;
	int ret;

	if (!vsi)
		return NULL;

	pf = vsi->back;

	FUNC6(pf->qp_pile, vsi->base_queue, vsi->idx);
	FUNC11(vsi);

	FUNC13(vsi, false);
	FUNC8(vsi);
	ret = FUNC9(vsi, false);
	if (ret)
		goto err_vsi;

	alloc_queue_pairs = vsi->alloc_queue_pairs *
			    (FUNC4(vsi) ? 2 : 1);

	ret = FUNC5(pf, pf->qp_pile, alloc_queue_pairs, vsi->idx);
	if (ret < 0) {
		FUNC0(&pf->pdev->dev,
			 "failed to get tracking for %d queues for VSI %d err %d\n",
			 alloc_queue_pairs, vsi->seid, ret);
		goto err_vsi;
	}
	vsi->base_queue = ret;

	/* Update the FW view of the VSI. Force a reset of TC and queue
	 * layout configurations.
	 */
	enabled_tc = pf->vsi[pf->lan_vsi]->tc_config.enabled_tc;
	pf->vsi[pf->lan_vsi]->tc_config.enabled_tc = 0;
	pf->vsi[pf->lan_vsi]->seid = pf->main_vsi_seid;
	FUNC12(pf->vsi[pf->lan_vsi], enabled_tc);
	if (vsi->type == I40E_VSI_MAIN)
		FUNC7(vsi, pf->hw.mac.perm_addr);

	/* assign it some queues */
	ret = FUNC2(vsi);
	if (ret)
		goto err_rings;

	/* map all of the rings to the q_vectors */
	FUNC15(vsi);
	return vsi;

err_rings:
	FUNC14(vsi);
	if (vsi->netdev_registered) {
		vsi->netdev_registered = false;
		FUNC16(vsi->netdev);
		FUNC1(vsi->netdev);
		vsi->netdev = NULL;
	}
	FUNC3(&pf->hw, vsi->seid, NULL);
err_vsi:
	FUNC10(vsi);
	return NULL;
}