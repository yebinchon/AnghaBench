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
typedef  int /*<<< orphan*/  u8 ;
struct virtchnl_ether_addr_list {int num_elements; TYPE_1__* list; int /*<<< orphan*/  vsi_id; } ;
struct i40e_vsi {int /*<<< orphan*/  mac_filter_hash_lock; } ;
struct i40e_vf {size_t lan_vsi_idx; scalar_t__ vf_id; int /*<<< orphan*/  num_mac; int /*<<< orphan*/  vf_states; struct i40e_pf* pf; } ;
struct i40e_pf {TYPE_2__* pdev; struct i40e_vsi** vsi; } ;
struct i40e_mac_filter {int dummy; } ;
typedef  scalar_t__ i40e_status ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {scalar_t__ addr; } ;

/* Variables and functions */
 scalar_t__ I40E_ERR_PARAM ; 
 int /*<<< orphan*/  I40E_VF_STATE_ACTIVE ; 
 int /*<<< orphan*/  VIRTCHNL_OP_ADD_ETH_ADDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,scalar_t__,scalar_t__) ; 
 struct i40e_mac_filter* FUNC1 (struct i40e_vsi*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct i40e_vf*,struct virtchnl_ether_addr_list*) ; 
 struct i40e_mac_filter* FUNC3 (struct i40e_vsi*,scalar_t__) ; 
 scalar_t__ FUNC4 (struct i40e_vsi*) ; 
 int /*<<< orphan*/  FUNC5 (struct i40e_vf*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct i40e_vf*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct i40e_vf *vf, u8 *msg)
{
	struct virtchnl_ether_addr_list *al =
	    (struct virtchnl_ether_addr_list *)msg;
	struct i40e_pf *pf = vf->pf;
	struct i40e_vsi *vsi = NULL;
	i40e_status ret = 0;
	int i;

	if (!FUNC9(I40E_VF_STATE_ACTIVE, &vf->vf_states) ||
	    !FUNC5(vf, al->vsi_id)) {
		ret = I40E_ERR_PARAM;
		goto error_param;
	}

	vsi = pf->vsi[vf->lan_vsi_idx];

	/* Lock once, because all function inside for loop accesses VSI's
	 * MAC filter list which needs to be protected using same lock.
	 */
	FUNC7(&vsi->mac_filter_hash_lock);

	ret = FUNC2(vf, al);
	if (ret) {
		FUNC8(&vsi->mac_filter_hash_lock);
		goto error_param;
	}

	/* add new addresses to the list */
	for (i = 0; i < al->num_elements; i++) {
		struct i40e_mac_filter *f;

		f = FUNC3(vsi, al->list[i].addr);
		if (!f) {
			f = FUNC1(vsi, al->list[i].addr);

			if (!f) {
				FUNC0(&pf->pdev->dev,
					"Unable to add MAC filter %pM for VF %d\n",
					al->list[i].addr, vf->vf_id);
				ret = I40E_ERR_PARAM;
				FUNC8(&vsi->mac_filter_hash_lock);
				goto error_param;
			} else {
				vf->num_mac++;
			}
		}
	}
	FUNC8(&vsi->mac_filter_hash_lock);

	/* program the updated filter list */
	ret = FUNC4(vsi);
	if (ret)
		FUNC0(&pf->pdev->dev, "Unable to program VF %d MAC filters, error %d\n",
			vf->vf_id, ret);

error_param:
	/* send the response to the VF */
	return FUNC6(vf, VIRTCHNL_OP_ADD_ETH_ADDR,
				       ret);
}