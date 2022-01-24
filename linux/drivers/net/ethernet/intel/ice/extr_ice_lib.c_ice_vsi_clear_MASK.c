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
struct ice_vsi {size_t idx; struct ice_pf* back; } ;
struct ice_pf {size_t next_vsi; TYPE_1__* pdev; int /*<<< orphan*/  sw_mutex; struct ice_vsi** vsi; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct ice_vsi*) ; 
 int /*<<< orphan*/  FUNC2 (struct ice_vsi*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct ice_vsi *vsi)
{
	struct ice_pf *pf = NULL;

	if (!vsi)
		return 0;

	if (!vsi->back)
		return -EINVAL;

	pf = vsi->back;

	if (!pf->vsi[vsi->idx] || pf->vsi[vsi->idx] != vsi) {
		FUNC0(&pf->pdev->dev, "vsi does not exist at pf->vsi[%d]\n",
			vsi->idx);
		return -EINVAL;
	}

	FUNC3(&pf->sw_mutex);
	/* updates the PF for this cleared VSI */

	pf->vsi[vsi->idx] = NULL;
	if (vsi->idx < pf->next_vsi)
		pf->next_vsi = vsi->idx;

	FUNC2(vsi);
	FUNC4(&pf->sw_mutex);
	FUNC1(&pf->pdev->dev, vsi);

	return 0;
}