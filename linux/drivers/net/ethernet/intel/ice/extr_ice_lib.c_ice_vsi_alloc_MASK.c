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
typedef  int /*<<< orphan*/  u16 ;
struct ice_vsi {int type; size_t idx; int /*<<< orphan*/  irq_handler; int /*<<< orphan*/  state; struct ice_pf* back; } ;
struct ice_pf {size_t next_vsi; int /*<<< orphan*/  sw_mutex; TYPE_1__* pdev; int /*<<< orphan*/  num_alloc_vsi; struct ice_vsi** vsi; } ;
typedef  enum ice_vsi_type { ____Placeholder_ice_vsi_type } ice_vsi_type ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  ICE_INVAL_VFID ; 
 size_t ICE_NO_VSI ; 
#define  ICE_VSI_LB 130 
#define  ICE_VSI_PF 129 
#define  ICE_VSI_VF 128 
 int /*<<< orphan*/  __ICE_DOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct ice_vsi*) ; 
 struct ice_vsi* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 size_t FUNC4 (struct ice_vsi**,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  ice_msix_clean_rings ; 
 int /*<<< orphan*/  FUNC5 (struct ice_vsi*) ; 
 int /*<<< orphan*/  FUNC6 (struct ice_vsi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ice_vsi *
FUNC10(struct ice_pf *pf, enum ice_vsi_type type, u16 vf_id)
{
	struct ice_vsi *vsi = NULL;

	/* Need to protect the allocation of the VSIs at the PF level */
	FUNC7(&pf->sw_mutex);

	/* If we have already allocated our maximum number of VSIs,
	 * pf->next_vsi will be ICE_NO_VSI. If not, pf->next_vsi index
	 * is available to be populated
	 */
	if (pf->next_vsi == ICE_NO_VSI) {
		FUNC0(&pf->pdev->dev, "out of VSI slots!\n");
		goto unlock_pf;
	}

	vsi = FUNC3(&pf->pdev->dev, sizeof(*vsi), GFP_KERNEL);
	if (!vsi)
		goto unlock_pf;

	vsi->type = type;
	vsi->back = pf;
	FUNC9(__ICE_DOWN, vsi->state);

	vsi->idx = pf->next_vsi;

	if (type == ICE_VSI_VF)
		FUNC6(vsi, vf_id);
	else
		FUNC6(vsi, ICE_INVAL_VFID);

	switch (vsi->type) {
	case ICE_VSI_PF:
		if (FUNC5(vsi))
			goto err_rings;

		/* Setup default MSIX irq handler for VSI */
		vsi->irq_handler = ice_msix_clean_rings;
		break;
	case ICE_VSI_VF:
		if (FUNC5(vsi))
			goto err_rings;
		break;
	case ICE_VSI_LB:
		if (FUNC5(vsi))
			goto err_rings;
		break;
	default:
		FUNC1(&pf->pdev->dev, "Unknown VSI type %d\n", vsi->type);
		goto unlock_pf;
	}

	/* fill VSI slot in the PF struct */
	pf->vsi[pf->next_vsi] = vsi;

	/* prepare pf->next_vsi for next use */
	pf->next_vsi = FUNC4(pf->vsi, pf->num_alloc_vsi,
					 pf->next_vsi);
	goto unlock_pf;

err_rings:
	FUNC2(&pf->pdev->dev, vsi);
	vsi = NULL;
unlock_pf:
	FUNC8(&pf->sw_mutex);
	return vsi;
}