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
struct i40e_vsi {size_t idx; int /*<<< orphan*/  af_xdp_zc_qps; int /*<<< orphan*/  base_vector; int /*<<< orphan*/  base_queue; int /*<<< orphan*/  type; struct i40e_pf* back; } ;
struct i40e_pf {size_t next_vsi; int /*<<< orphan*/  switch_mutex; struct i40e_vsi** vsi; int /*<<< orphan*/  irq_pile; int /*<<< orphan*/  qp_pile; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,size_t,size_t,size_t,...) ; 
 int /*<<< orphan*/  FUNC2 (struct i40e_vsi*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct i40e_vsi*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct i40e_vsi*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct i40e_vsi *vsi)
{
	struct i40e_pf *pf;

	if (!vsi)
		return 0;

	if (!vsi->back)
		goto free_vsi;
	pf = vsi->back;

	FUNC6(&pf->switch_mutex);
	if (!pf->vsi[vsi->idx]) {
		FUNC1(&pf->pdev->dev, "pf->vsi[%d] is NULL, just free vsi[%d](type %d)\n",
			vsi->idx, vsi->idx, vsi->type);
		goto unlock_vsi;
	}

	if (pf->vsi[vsi->idx] != vsi) {
		FUNC1(&pf->pdev->dev,
			"pf->vsi[%d](type %d) != vsi[%d](type %d): no free!\n",
			pf->vsi[vsi->idx]->idx,
			pf->vsi[vsi->idx]->type,
			vsi->idx, vsi->type);
		goto unlock_vsi;
	}

	/* updates the PF for this cleared vsi */
	FUNC3(pf->qp_pile, vsi->base_queue, vsi->idx);
	FUNC3(pf->irq_pile, vsi->base_vector, vsi->idx);

	FUNC0(vsi->af_xdp_zc_qps);
	FUNC4(vsi, true);
	FUNC2(vsi);

	pf->vsi[vsi->idx] = NULL;
	if (vsi->idx < pf->next_vsi)
		pf->next_vsi = vsi->idx;

unlock_vsi:
	FUNC7(&pf->switch_mutex);
free_vsi:
	FUNC5(vsi);

	return 0;
}