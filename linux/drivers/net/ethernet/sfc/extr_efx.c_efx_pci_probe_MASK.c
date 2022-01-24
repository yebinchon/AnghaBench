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
struct pci_device_id {scalar_t__ driver_data; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;
struct efx_nic_type {int /*<<< orphan*/  (* udp_tnl_push_ports ) (struct efx_nic*) ;int /*<<< orphan*/  is_vf; } ;
struct efx_nic {int /*<<< orphan*/  net_dev; struct efx_nic_type const* type; scalar_t__ reset_pending; int /*<<< orphan*/  fixed_features; } ;

/* Variables and functions */
 int /*<<< orphan*/  EFX_MAX_CORE_TX_QUEUES ; 
 int /*<<< orphan*/  EFX_MAX_RX_QUEUES ; 
 int ENOMEM ; 
 int EPERM ; 
 int /*<<< orphan*/  NETIF_F_HIGHDMA ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct net_device* FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC3 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC4 (struct efx_nic*) ; 
 int FUNC5 (struct efx_nic*) ; 
 int FUNC6 (struct efx_nic*,struct pci_dev*,struct net_device*) ; 
 int FUNC7 (struct efx_nic*) ; 
 int FUNC8 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC9 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC12 (unsigned int) ; 
 struct efx_nic* FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC15 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC16 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC18 (struct pci_dev*,struct efx_nic*) ; 
 int /*<<< orphan*/  probe ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (struct efx_nic*) ; 

__attribute__((used)) static int FUNC22(struct pci_dev *pci_dev,
			 const struct pci_device_id *entry)
{
	struct net_device *net_dev;
	struct efx_nic *efx;
	int rc;

	/* Allocate and initialise a struct net_device and struct efx_nic */
	net_dev = FUNC2(sizeof(*efx), EFX_MAX_CORE_TX_QUEUES,
				     EFX_MAX_RX_QUEUES);
	if (!net_dev)
		return -ENOMEM;
	efx = FUNC13(net_dev);
	efx->type = (const struct efx_nic_type *) entry->driver_data;
	efx->fixed_features |= NETIF_F_HIGHDMA;

	FUNC18(pci_dev, efx);
	FUNC0(net_dev, &pci_dev->dev);
	rc = FUNC6(efx, pci_dev, net_dev);
	if (rc)
		goto fail1;

	FUNC15(efx, probe, efx->net_dev,
		   "Solarflare NIC detected\n");

	if (!efx->type->is_vf)
		FUNC9(efx);

	/* Set up basic I/O (BAR mappings etc) */
	rc = FUNC5(efx);
	if (rc)
		goto fail2;

	rc = FUNC8(efx);
	if (rc) {
		/* On failure, retry once immediately.
		 * If we aborted probe due to a scheduled reset, dismiss it.
		 */
		efx->reset_pending = 0;
		rc = FUNC8(efx);
		if (rc) {
			/* On another failure, retry once more
			 * after a 50-305ms delay.
			 */
			unsigned char r;

			FUNC11(&r, 1);
			FUNC12((unsigned int)r + 50);
			efx->reset_pending = 0;
			rc = FUNC8(efx);
		}
	}
	if (rc)
		goto fail3;

	FUNC14(efx, probe, efx->net_dev, "initialisation successful\n");

	/* Try to create MTDs, but allow this to fail */
	FUNC19();
	rc = FUNC7(efx);
	FUNC20();
	if (rc && rc != -EPERM)
		FUNC16(efx, probe, efx->net_dev,
			   "failed to create MTDs (%d)\n", rc);

	(void)FUNC17(pci_dev);

	if (efx->type->udp_tnl_push_ports)
		efx->type->udp_tnl_push_ports(efx);

	return 0;

 fail3:
	FUNC3(efx);
 fail2:
	FUNC4(efx);
 fail1:
	FUNC1(rc > 0);
	FUNC14(efx, drv, efx->net_dev, "initialisation failed. rc=%d\n", rc);
	FUNC10(net_dev);
	return rc;
}