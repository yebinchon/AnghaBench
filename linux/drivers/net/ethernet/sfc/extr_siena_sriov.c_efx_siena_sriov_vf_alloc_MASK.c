#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct siena_vf {unsigned int index; int rx_filter_id; int tx_filter_id; int /*<<< orphan*/  txq_lock; int /*<<< orphan*/  status_lock; int /*<<< orphan*/  flush_waitq; int /*<<< orphan*/  reset_work; int /*<<< orphan*/  req; int /*<<< orphan*/  tx_filter_mode; struct efx_nic* efx; } ;
struct siena_nic_data {struct siena_vf* vf; } ;
struct efx_nic {unsigned int vf_count; struct siena_nic_data* nic_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VF_TX_FILTER_AUTO ; 
 int /*<<< orphan*/  efx_siena_sriov_reset_vf_work ; 
 int /*<<< orphan*/  efx_siena_sriov_vfdi ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct siena_vf* FUNC2 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct efx_nic *efx)
{
	unsigned index;
	struct siena_vf *vf;
	struct siena_nic_data *nic_data = efx->nic_data;

	nic_data->vf = FUNC2(efx->vf_count, sizeof(*nic_data->vf),
			       GFP_KERNEL);
	if (!nic_data->vf)
		return -ENOMEM;

	for (index = 0; index < efx->vf_count; ++index) {
		vf = nic_data->vf + index;

		vf->efx = efx;
		vf->index = index;
		vf->rx_filter_id = -1;
		vf->tx_filter_mode = VF_TX_FILTER_AUTO;
		vf->tx_filter_id = -1;
		FUNC0(&vf->req, efx_siena_sriov_vfdi);
		FUNC0(&vf->reset_work, efx_siena_sriov_reset_vf_work);
		FUNC1(&vf->flush_waitq);
		FUNC3(&vf->status_lock);
		FUNC3(&vf->txq_lock);
	}

	return 0;
}