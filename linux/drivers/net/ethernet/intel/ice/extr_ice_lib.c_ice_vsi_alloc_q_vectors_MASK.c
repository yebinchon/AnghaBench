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
struct ice_vsi {int num_q_vectors; int /*<<< orphan*/  vsi_num; scalar_t__* q_vectors; struct ice_pf* back; } ;
struct ice_pf {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EEXIST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ice_vsi*,int) ; 
 int FUNC3 (struct ice_vsi*,int) ; 

__attribute__((used)) static int FUNC4(struct ice_vsi *vsi)
{
	struct ice_pf *pf = vsi->back;
	int v_idx = 0, num_q_vectors;
	int err;

	if (vsi->q_vectors[0]) {
		FUNC0(&pf->pdev->dev, "VSI %d has existing q_vectors\n",
			vsi->vsi_num);
		return -EEXIST;
	}

	num_q_vectors = vsi->num_q_vectors;

	for (v_idx = 0; v_idx < num_q_vectors; v_idx++) {
		err = FUNC3(vsi, v_idx);
		if (err)
			goto err_out;
	}

	return 0;

err_out:
	while (v_idx--)
		FUNC2(vsi, v_idx);

	FUNC1(&pf->pdev->dev,
		"Failed to allocate %d q_vector for VSI %d, ret=%d\n",
		vsi->num_q_vectors, vsi->vsi_num, err);
	vsi->num_q_vectors = 0;
	return err;
}