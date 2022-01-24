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
struct vfdi_status {int version; int length; scalar_t__ peer_count; TYPE_1__* peers; int /*<<< orphan*/  timer_quantum_ns; int /*<<< orphan*/  rss_rxq_count; int /*<<< orphan*/  vi_scale; int /*<<< orphan*/  max_tx_channels; } ;
struct TYPE_5__ {struct vfdi_status* addr; } ;
struct siena_nic_data {TYPE_2__ vfdi_status; int /*<<< orphan*/  vf; int /*<<< orphan*/  peer_work; int /*<<< orphan*/  local_page_list; int /*<<< orphan*/  local_addr_list; int /*<<< orphan*/  local_lock; } ;
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct efx_nic {scalar_t__ vf_count; scalar_t__ vf_init_count; int /*<<< orphan*/  pci_dev; int /*<<< orphan*/  timer_quantum_ns; int /*<<< orphan*/  rss_spread; int /*<<< orphan*/  vi_scale; struct siena_nic_data* nic_data; struct net_device* net_dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  mac_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EFX_MAX_CHANNELS ; 
 int EFX_VI_BASE ; 
 int EFX_VI_SCALE_MAX ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct efx_nic*,TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct efx_nic*,TYPE_2__*) ; 
 int FUNC6 (struct efx_nic*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct efx_nic*) ; 
 int /*<<< orphan*/  efx_siena_sriov_peer_work ; 
 int /*<<< orphan*/  FUNC8 (struct efx_nic*,int) ; 
 int FUNC9 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC10 (struct efx_nic*) ; 
 int FUNC11 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC12 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct vfdi_status*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct efx_nic*,int /*<<< orphan*/ ,struct net_device*,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC18 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  probe ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  vf_max_tx_channels ; 

int FUNC21(struct efx_nic *efx)
{
	struct net_device *net_dev = efx->net_dev;
	struct siena_nic_data *nic_data = efx->nic_data;
	struct vfdi_status *vfdi_status;
	int rc;

	/* Ensure there's room for vf_channel */
	FUNC0(EFX_MAX_CHANNELS + 1 >= EFX_VI_BASE);
	/* Ensure that VI_BASE is aligned on VI_SCALE */
	FUNC0(EFX_VI_BASE & ((1 << EFX_VI_SCALE_MAX) - 1));

	if (efx->vf_count == 0)
		return 0;

	rc = FUNC6(efx, true, NULL, NULL);
	if (rc)
		goto fail_cmd;

	rc = FUNC4(efx, &nic_data->vfdi_status,
				  sizeof(*vfdi_status), GFP_KERNEL);
	if (rc)
		goto fail_status;
	vfdi_status = nic_data->vfdi_status.addr;
	FUNC15(vfdi_status, 0, sizeof(*vfdi_status));
	vfdi_status->version = 1;
	vfdi_status->length = sizeof(*vfdi_status);
	vfdi_status->max_tx_channels = vf_max_tx_channels;
	vfdi_status->vi_scale = efx->vi_scale;
	vfdi_status->rss_rxq_count = efx->rss_spread;
	vfdi_status->peer_count = 1 + efx->vf_count;
	vfdi_status->timer_quantum_ns = efx->timer_quantum_ns;

	rc = FUNC9(efx);
	if (rc)
		goto fail_alloc;

	FUNC16(&nic_data->local_lock);
	FUNC2(&nic_data->peer_work, efx_siena_sriov_peer_work);
	FUNC1(&nic_data->local_addr_list);
	FUNC1(&nic_data->local_page_list);

	rc = FUNC11(efx);
	if (rc)
		goto fail_vfs;

	FUNC19();
	FUNC13(vfdi_status->peers[0].mac_addr, net_dev->dev_addr);
	efx->vf_init_count = efx->vf_count;
	FUNC20();

	FUNC8(efx, true);

	/* At this point we must be ready to accept VFDI requests */

	rc = FUNC18(efx->pci_dev, efx->vf_count);
	if (rc)
		goto fail_pci;

	FUNC17(efx, probe, net_dev,
		   "enabled SR-IOV for %d VFs, %d VI per VF\n",
		   efx->vf_count, FUNC12(efx));
	return 0;

fail_pci:
	FUNC8(efx, false);
	FUNC19();
	efx->vf_init_count = 0;
	FUNC20();
	FUNC10(efx);
fail_vfs:
	FUNC3(&nic_data->peer_work);
	FUNC7(efx);
	FUNC14(nic_data->vf);
fail_alloc:
	FUNC5(efx, &nic_data->vfdi_status);
fail_status:
	FUNC6(efx, false, NULL, NULL);
fail_cmd:
	return rc;
}