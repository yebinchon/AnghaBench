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
struct pci_dev {int dummy; } ;
struct efx_nic {TYPE_1__* pci_dev; int /*<<< orphan*/  net_dev; struct efx_ef10_nic_data* nic_data; } ;
struct efx_ef10_nic_data {int vf_index; int /*<<< orphan*/  mcdi_buf; int /*<<< orphan*/  udp_tunnels_lock; int /*<<< orphan*/  udp_tunnels; int /*<<< orphan*/  must_restore_piobufs; scalar_t__ wc_membase; int /*<<< orphan*/  vlan_lock; struct ef10_vf* vf; } ;
struct ef10_vf {int /*<<< orphan*/ * efx; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; struct pci_dev* physfn; scalar_t__ is_virtfn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  dev_attr_link_control_flag ; 
 int /*<<< orphan*/  dev_attr_primary_flag ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC2 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC3 (struct efx_nic*) ; 
 int FUNC4 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC5 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC6 (struct efx_nic*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC8 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC9 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC10 (struct efx_nic*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct efx_ef10_nic_data*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 struct efx_nic* FUNC19 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC20(struct efx_nic *efx)
{
	struct efx_ef10_nic_data *nic_data = efx->nic_data;
	int rc;

#ifdef CONFIG_SFC_SRIOV
	struct efx_ef10_nic_data *nic_data_pf;
	struct pci_dev *pci_dev_pf;
	struct efx_nic *efx_pf;
	struct ef10_vf *vf;

	if (efx->pci_dev->is_virtfn) {
		pci_dev_pf = efx->pci_dev->physfn;
		if (pci_dev_pf) {
			efx_pf = pci_get_drvdata(pci_dev_pf);
			nic_data_pf = efx_pf->nic_data;
			vf = nic_data_pf->vf + nic_data->vf_index;
			vf->efx = NULL;
		} else
			netif_info(efx, drv, efx->net_dev,
				   "Could not get the PF id from VF\n");
	}
#endif

	FUNC2(efx);
	FUNC15(&nic_data->vlan_lock);

	FUNC11(efx);

	FUNC9(efx);

	FUNC5(efx);

	if (nic_data->wc_membase)
		FUNC12(nic_data->wc_membase);

	rc = FUNC4(efx);
	FUNC0(rc != 0);

	if (!nic_data->must_restore_piobufs)
		FUNC3(efx);

	FUNC1(&efx->pci_dev->dev, &dev_attr_primary_flag);
	FUNC1(&efx->pci_dev->dev, &dev_attr_link_control_flag);

	FUNC7(efx);

	FUNC14(nic_data->udp_tunnels, 0, sizeof(nic_data->udp_tunnels));
	FUNC16(&nic_data->udp_tunnels_lock);
	(void)FUNC6(efx, true);
	FUNC17(&nic_data->udp_tunnels_lock);

	FUNC15(&nic_data->udp_tunnels_lock);

	FUNC8(efx);
	FUNC10(efx, &nic_data->mcdi_buf);
	FUNC13(nic_data);
}