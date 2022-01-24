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
struct net_device {int features; int vlan_features; int hw_features; } ;
struct ef4_nic_type {int offload_features; } ;
struct ef4_nic {int fixed_features; int /*<<< orphan*/  net_dev; struct ef4_nic_type const* type; } ;

/* Variables and functions */
 int /*<<< orphan*/  EF4_MAX_CORE_TX_QUEUES ; 
 int /*<<< orphan*/  EF4_MAX_RX_QUEUES ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EPERM ; 
 int NETIF_F_HIGHDMA ; 
 int NETIF_F_HW_CSUM ; 
 int NETIF_F_HW_VLAN_CTAG_FILTER ; 
 int NETIF_F_RXCSUM ; 
 int NETIF_F_SG ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct net_device* FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC3 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC4 (struct ef4_nic*) ; 
 int FUNC5 (struct ef4_nic*) ; 
 int FUNC6 (struct ef4_nic*,struct pci_dev*,struct net_device*) ; 
 int FUNC7 (struct ef4_nic*) ; 
 int FUNC8 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC9 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC10 (struct ef4_nic*) ; 
 int FUNC11 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 struct ef4_nic* FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct ef4_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC15 (struct ef4_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC16 (struct ef4_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct ef4_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC18 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC19 (struct pci_dev*,struct ef4_nic*) ; 
 int /*<<< orphan*/  probe ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 () ; 

__attribute__((used)) static int FUNC22(struct pci_dev *pci_dev,
			 const struct pci_device_id *entry)
{
	struct net_device *net_dev;
	struct ef4_nic *efx;
	int rc;

	/* Allocate and initialise a struct net_device and struct ef4_nic */
	net_dev = FUNC2(sizeof(*efx), EF4_MAX_CORE_TX_QUEUES,
				     EF4_MAX_RX_QUEUES);
	if (!net_dev)
		return -ENOMEM;
	efx = FUNC13(net_dev);
	efx->type = (const struct ef4_nic_type *) entry->driver_data;
	efx->fixed_features |= NETIF_F_HIGHDMA;

	FUNC19(pci_dev, efx);
	FUNC0(net_dev, &pci_dev->dev);
	rc = FUNC6(efx, pci_dev, net_dev);
	if (rc)
		goto fail1;

	FUNC15(efx, probe, efx->net_dev,
		   "Solarflare NIC detected\n");

	FUNC10(efx);

	/* Set up basic I/O (BAR mappings etc) */
	rc = FUNC5(efx);
	if (rc)
		goto fail2;

	rc = FUNC8(efx);
	if (rc)
		goto fail3;

	net_dev->features |= (efx->type->offload_features | NETIF_F_SG |
			      NETIF_F_RXCSUM);
	/* Mask for features that also apply to VLAN devices */
	net_dev->vlan_features |= (NETIF_F_HW_CSUM | NETIF_F_SG |
				   NETIF_F_HIGHDMA | NETIF_F_RXCSUM);

	net_dev->hw_features = net_dev->features & ~efx->fixed_features;

	/* Disable VLAN filtering by default.  It may be enforced if
	 * the feature is fixed (i.e. VLAN filters are required to
	 * receive VLAN tagged packets due to vPort restrictions).
	 */
	net_dev->features &= ~NETIF_F_HW_VLAN_CTAG_FILTER;
	net_dev->features |= efx->fixed_features;

	rc = FUNC11(efx);
	if (rc)
		goto fail4;

	FUNC14(efx, probe, efx->net_dev, "initialisation successful\n");

	/* Try to create MTDs, but allow this to fail */
	FUNC20();
	rc = FUNC7(efx);
	FUNC21();
	if (rc && rc != -EPERM)
		FUNC17(efx, probe, efx->net_dev,
			   "failed to create MTDs (%d)\n", rc);

	rc = FUNC18(pci_dev);
	if (rc && rc != -EINVAL)
		FUNC16(efx, probe, efx->net_dev,
			     "PCIE error reporting unavailable (%d).\n",
			     rc);

	return 0;

 fail4:
	FUNC9(efx);
 fail3:
	FUNC3(efx);
 fail2:
	FUNC4(efx);
 fail1:
	FUNC1(rc > 0);
	FUNC14(efx, drv, efx->net_dev, "initialisation failed. rc=%d\n", rc);
	FUNC12(net_dev);
	return rc;
}