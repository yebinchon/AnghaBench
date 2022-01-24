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
struct TYPE_4__ {int /*<<< orphan*/  rx_indir_table; } ;
struct efx_nic {TYPE_2__ rss_context; TYPE_1__* type; int /*<<< orphan*/  net_dev; struct efx_ef10_nic_data* nic_data; } ;
struct efx_ef10_nic_data {int must_check_datapath_caps; int must_realloc_vis; int must_restore_piobufs; scalar_t__ n_piobufs; int /*<<< orphan*/  n_allocated_vis; } ;
struct TYPE_3__ {int (* rx_push_rss_config ) (struct efx_nic*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int EPERM ; 
 int /*<<< orphan*/  drv ; 
 int FUNC0 (struct efx_nic*,scalar_t__) ; 
 int FUNC1 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct efx_nic*) ; 
 int FUNC3 (struct efx_nic*) ; 
 int FUNC4 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC5 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC7 (struct efx_nic*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct efx_nic *efx)
{
	struct efx_ef10_nic_data *nic_data = efx->nic_data;
	int rc;

	if (nic_data->must_check_datapath_caps) {
		rc = FUNC3(efx);
		if (rc)
			return rc;
		nic_data->must_check_datapath_caps = false;
	}

	if (nic_data->must_realloc_vis) {
		/* We cannot let the number of VIs change now */
		rc = FUNC1(efx, nic_data->n_allocated_vis,
					nic_data->n_allocated_vis);
		if (rc)
			return rc;
		nic_data->must_realloc_vis = false;
	}

	if (nic_data->must_restore_piobufs && nic_data->n_piobufs) {
		rc = FUNC0(efx, nic_data->n_piobufs);
		if (rc == 0) {
			rc = FUNC4(efx);
			if (rc)
				FUNC2(efx);
		}

		/* Log an error on failure, but this is non-fatal.
		 * Permission errors are less important - we've presumably
		 * had the PIO buffer licence removed.
		 */
		if (rc == -EPERM)
			FUNC5(efx, drv, efx->net_dev,
				  "not permitted to restore PIO buffers\n");
		else if (rc)
			FUNC6(efx, drv, efx->net_dev,
				  "failed to restore PIO buffers (%d)\n", rc);
		nic_data->must_restore_piobufs = false;
	}

	/* don't fail init if RSS setup doesn't work */
	rc = efx->type->rx_push_rss_config(efx, false,
					   efx->rss_context.rx_indir_table, NULL);

	return 0;
}