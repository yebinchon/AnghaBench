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
typedef  scalar_t__ uint8_t ;
typedef  int u32 ;
struct pci_device_id {int dummy; } ;
struct pci_dev {scalar_t__ revision; int /*<<< orphan*/  dev; int /*<<< orphan*/  devfn; } ;
struct TYPE_2__ {int pci_func; scalar_t__ revision_id; int board_type; int port_type; int /*<<< orphan*/  mem_lock; int /*<<< orphan*/  crb_lock; } ;
struct netxen_adapter {int portnum; int need_fw_reset; int physical_port; struct net_device* netdev; struct pci_dev* pdev; TYPE_1__ ahw; int /*<<< orphan*/  ip_list; int /*<<< orphan*/  mac_list; int /*<<< orphan*/  tx_clean_lock; } ;
struct net_device {int /*<<< orphan*/  name; int /*<<< orphan*/  max_mtu; scalar_t__ min_mtu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FW_POLL_DELAY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int IORESOURCE_MEM ; 
#define  NETXEN_BRDTYPE_P2_SB31_10G_HMEZ 131 
#define  NETXEN_BRDTYPE_P2_SB31_10G_IMEZ 130 
#define  NETXEN_NIC_GBE 129 
#define  NETXEN_NIC_XGBE 128 
 int FUNC2 (struct netxen_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct netxen_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NX_CRB_DEV_REF_COUNT ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ NX_P3_A0 ; 
 scalar_t__ NX_P3_B1 ; 
 int /*<<< orphan*/  P2_MAX_MTU ; 
 int /*<<< orphan*/  P3_MAX_MTU ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 struct net_device* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 struct netxen_adapter* FUNC13 (struct net_device*) ; 
 int FUNC14 (struct netxen_adapter*) ; 
 int /*<<< orphan*/  FUNC15 (struct netxen_adapter*) ; 
 int /*<<< orphan*/  FUNC16 (struct netxen_adapter*) ; 
 int /*<<< orphan*/  FUNC17 (struct netxen_adapter*) ; 
 int /*<<< orphan*/  netxen_fw_poll_work ; 
 int /*<<< orphan*/  FUNC18 (struct netxen_adapter*) ; 
 int /*<<< orphan*/  FUNC19 (struct netxen_adapter*) ; 
 int /*<<< orphan*/  netxen_nic_driver_name ; 
 int FUNC20 (struct netxen_adapter*) ; 
 int /*<<< orphan*/  FUNC21 (struct netxen_adapter*) ; 
 int /*<<< orphan*/  FUNC22 (struct netxen_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC23 (struct netxen_adapter*) ; 
 int FUNC24 (struct netxen_adapter*,struct net_device*) ; 
 int FUNC25 (struct netxen_adapter*) ; 
 int FUNC26 (struct netxen_adapter*) ; 
 int /*<<< orphan*/  FUNC27 (struct netxen_adapter*) ; 
 int /*<<< orphan*/  FUNC28 (struct netxen_adapter*) ; 
 int /*<<< orphan*/  FUNC29 (struct pci_dev*) ; 
 int FUNC30 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC31 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC32 (struct pci_dev*) ; 
 int FUNC33 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC34 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 (struct pci_dev*,struct netxen_adapter*) ; 
 int /*<<< orphan*/  FUNC36 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC37 (char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC40(struct pci_dev *pdev, const struct pci_device_id *ent)
{
	struct net_device *netdev = NULL;
	struct netxen_adapter *adapter = NULL;
	int i = 0, err;
	int pci_func_id = FUNC6(pdev->devfn);
	uint8_t revision_id;
	u32 val;

	if (pdev->revision >= NX_P3_A0 && pdev->revision <= NX_P3_B1) {
		FUNC37("%s: chip revisions between 0x%x-0x%x will not be enabled\n",
			FUNC12(THIS_MODULE), NX_P3_A0, NX_P3_B1);
		return -ENODEV;
	}

	if ((err = FUNC30(pdev)))
		return err;

	if (!(FUNC34(pdev, 0) & IORESOURCE_MEM)) {
		err = -ENODEV;
		goto err_out_disable_pdev;
	}

	if ((err = FUNC33(pdev, netxen_nic_driver_name)))
		goto err_out_disable_pdev;

	if (FUNC5(pdev->revision))
		FUNC31(pdev);

	FUNC36(pdev);

	netdev = FUNC8(sizeof(struct netxen_adapter));
	if(!netdev) {
		err = -ENOMEM;
		goto err_out_free_res;
	}

	FUNC7(netdev, &pdev->dev);

	adapter = FUNC13(netdev);
	adapter->netdev  = netdev;
	adapter->pdev    = pdev;
	adapter->ahw.pci_func  = pci_func_id;

	revision_id = pdev->revision;
	adapter->ahw.revision_id = revision_id;

	FUNC38(&adapter->ahw.crb_lock);
	FUNC39(&adapter->ahw.mem_lock);

	FUNC39(&adapter->tx_clean_lock);
	FUNC1(&adapter->mac_list);
	FUNC1(&adapter->ip_list);

	err = FUNC25(adapter);
	if (err)
		goto err_out_free_netdev;

	/* This will be reset for mezz cards  */
	adapter->portnum = pci_func_id;

	err = FUNC20(adapter);
	if (err) {
		FUNC9(&pdev->dev, "Error getting board config info.\n");
		goto err_out_iounmap;
	}

#ifdef CONFIG_PCIEAER
	netxen_mask_aer_correctable(adapter);
#endif

	/* Mezz cards have PCI function 0,2,3 enabled */
	switch (adapter->ahw.board_type) {
	case NETXEN_BRDTYPE_P2_SB31_10G_IMEZ:
	case NETXEN_BRDTYPE_P2_SB31_10G_HMEZ:
		if (pci_func_id >= 2)
			adapter->portnum = pci_func_id - 2;
		break;
	default:
		break;
	}

	err = FUNC14(adapter);
	if (err)
		goto err_out_iounmap;

	if (adapter->portnum == 0) {
		val = FUNC2(adapter, NX_CRB_DEV_REF_COUNT);
		if (val != 0xffffffff && val != 0) {
			FUNC3(adapter, NX_CRB_DEV_REF_COUNT, 0);
			adapter->need_fw_reset = 1;
		}
	}

	err = FUNC26(adapter);
	if (err)
		goto err_out_decr_ref;

	/*
	 * See if the firmware gave us a virtual-physical port mapping.
	 */
	adapter->physical_port = adapter->portnum;
	if (FUNC4(adapter->ahw.revision_id)) {
		i = FUNC2(adapter, FUNC0(adapter->portnum));
		if (i != 0x55555555)
			adapter->physical_port = i;
	}

	/* MTU range: 0 - 8000 (P2) or 9600 (P3) */
	netdev->min_mtu = 0;
	if (FUNC5(adapter->ahw.revision_id))
		netdev->max_mtu = P3_MAX_MTU;
	else
		netdev->max_mtu = P2_MAX_MTU;

	FUNC19(adapter);

	err = FUNC23(adapter);

	if (err) {
		FUNC9(&adapter->pdev->dev,
			"Failed to setup interrupts, error = %d\n", err);
		goto err_out_disable_msi;
	}

	FUNC21(adapter);

	err = FUNC24(adapter, netdev);
	if (err)
		goto err_out_disable_msi;

	FUNC35(pdev, adapter);

	FUNC22(adapter, netxen_fw_poll_work, FW_POLL_DELAY);

	switch (adapter->ahw.port_type) {
	case NETXEN_NIC_GBE:
		FUNC10(&adapter->pdev->dev, "%s: GbE port initialized\n",
				adapter->netdev->name);
		break;
	case NETXEN_NIC_XGBE:
		FUNC10(&adapter->pdev->dev, "%s: XGbE port initialized\n",
				adapter->netdev->name);
		break;
	}

	FUNC16(adapter);

	return 0;

err_out_disable_msi:
	FUNC27(adapter);

	FUNC17(adapter);

err_out_decr_ref:
	FUNC28(adapter);

err_out_iounmap:
	FUNC15(adapter);

err_out_free_netdev:
	FUNC11(netdev);

err_out_free_res:
	FUNC32(pdev);

err_out_disable_pdev:
	FUNC29(pdev);
	return err;
}