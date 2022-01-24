#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct efx_nic {int vf_count; struct efx_ef10_nic_data* nic_data; } ;
struct efx_ef10_nic_data {struct ef10_vf* vf; } ;
struct ef10_vf {int /*<<< orphan*/ * mac; TYPE_2__* efx; int /*<<< orphan*/  vport_id; } ;
struct TYPE_12__ {int /*<<< orphan*/ * dev_addr; } ;
struct TYPE_11__ {TYPE_4__* net_dev; int /*<<< orphan*/  filter_sem; TYPE_1__* type; } ;
struct TYPE_10__ {int /*<<< orphan*/  (* filter_table_probe ) (TYPE_2__*) ;int /*<<< orphan*/  (* filter_table_remove ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  EVB_PORT_ID_ASSIGNED ; 
 int /*<<< orphan*/  EVB_PORT_ID_NULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int FUNC3 (struct efx_nic*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

int FUNC16(struct efx_nic *efx, int vf_i, u8 *mac)
{
	struct efx_ef10_nic_data *nic_data = efx->nic_data;
	struct ef10_vf *vf;
	int rc;

	if (!nic_data->vf)
		return -EOPNOTSUPP;

	if (vf_i >= efx->vf_count)
		return -EINVAL;
	vf = nic_data->vf + vf_i;

	if (vf->efx) {
		FUNC2(vf->efx);
		FUNC9(vf->efx->net_dev);

		FUNC0(&vf->efx->filter_sem);
		vf->efx->type->filter_table_remove(vf->efx);

		rc = FUNC5(vf->efx, EVB_PORT_ID_ASSIGNED);
		if (rc) {
			FUNC15(&vf->efx->filter_sem);
			return rc;
		}
	}

	rc = FUNC3(efx, EVB_PORT_ID_NULL, vf_i);
	if (rc)
		return rc;

	if (!FUNC12(vf->mac)) {
		rc = FUNC7(efx, vf->vport_id, vf->mac);
		if (rc)
			return rc;
	}

	if (!FUNC12(mac)) {
		rc = FUNC6(efx, vf->vport_id, mac);
		if (rc) {
			FUNC10(vf->mac);
			goto fail;
		}
		if (vf->efx)
			FUNC11(vf->efx->net_dev->dev_addr, mac);
	}

	FUNC11(vf->mac, mac);

	rc = FUNC3(efx, vf->vport_id, vf_i);
	if (rc)
		goto fail;

	if (vf->efx) {
		/* VF cannot use the vport_id that the PF created */
		rc = FUNC4(vf->efx, EVB_PORT_ID_ASSIGNED);
		if (rc) {
			FUNC15(&vf->efx->filter_sem);
			return rc;
		}
		vf->efx->type->filter_table_probe(vf->efx);
		FUNC15(&vf->efx->filter_sem);
		FUNC8(vf->efx->net_dev);
		FUNC1(vf->efx);
	}

	return 0;

fail:
	FUNC10(vf->mac);
	return rc;
}