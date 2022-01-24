#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct vmxnet3_adapter {TYPE_3__* pdev; int /*<<< orphan*/  cmd_lock; TYPE_2__* shared; } ;
struct net_device {int flags; } ;
struct Vmxnet3_RxFilterConf {int* vfTable; int rxMode; scalar_t__ mfTableLen; scalar_t__ mfTablePA; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {struct Vmxnet3_RxFilterConf rxFilterConf; } ;
struct TYPE_5__ {TYPE_1__ devRead; } ;

/* Variables and functions */
 size_t ETH_ALEN ; 
 int IFF_ALLMULTI ; 
 int IFF_BROADCAST ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  VMXNET3_CMD_UPDATE_MAC_FILTERS ; 
 int /*<<< orphan*/  VMXNET3_CMD_UPDATE_RX_MODE ; 
 int /*<<< orphan*/  VMXNET3_CMD_UPDATE_VLAN_FILTERS ; 
 int /*<<< orphan*/  VMXNET3_REG_CMD ; 
 int VMXNET3_RXM_ALL_MULTI ; 
 int VMXNET3_RXM_BCAST ; 
 int VMXNET3_RXM_MCAST ; 
 int VMXNET3_RXM_PROMISC ; 
 int VMXNET3_RXM_UCAST ; 
 int VMXNET3_VFT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct vmxnet3_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (size_t) ; 
 int FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,char*) ; 
 size_t FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 struct vmxnet3_adapter* FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/ * FUNC15 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct vmxnet3_adapter*) ; 

__attribute__((used)) static void
FUNC17(struct net_device *netdev)
{
	struct vmxnet3_adapter *adapter = FUNC12(netdev);
	unsigned long flags;
	struct Vmxnet3_RxFilterConf *rxConf =
					&adapter->shared->devRead.rxFilterConf;
	u8 *new_table = NULL;
	dma_addr_t new_table_pa = 0;
	bool new_table_pa_valid = false;
	u32 new_mode = VMXNET3_RXM_UCAST;

	if (netdev->flags & IFF_PROMISC) {
		u32 *vfTable = adapter->shared->devRead.rxFilterConf.vfTable;
		FUNC8(vfTable, 0, VMXNET3_VFT_SIZE * sizeof(*vfTable));

		new_mode |= VMXNET3_RXM_PROMISC;
	} else {
		FUNC16(adapter);
	}

	if (netdev->flags & IFF_BROADCAST)
		new_mode |= VMXNET3_RXM_BCAST;

	if (netdev->flags & IFF_ALLMULTI)
		new_mode |= VMXNET3_RXM_ALL_MULTI;
	else
		if (!FUNC11(netdev)) {
			new_table = FUNC15(netdev);
			if (new_table) {
				size_t sz = FUNC10(netdev) * ETH_ALEN;

				rxConf->mfTableLen = FUNC1(sz);
				new_table_pa = FUNC4(
							&adapter->pdev->dev,
							new_table,
							sz,
							PCI_DMA_TODEVICE);
				if (!FUNC5(&adapter->pdev->dev,
						       new_table_pa)) {
					new_mode |= VMXNET3_RXM_MCAST;
					new_table_pa_valid = true;
					rxConf->mfTablePA = FUNC3(
								new_table_pa);
				}
			}
			if (!new_table_pa_valid) {
				FUNC9(netdev,
					    "failed to copy mcast list, setting ALL_MULTI\n");
				new_mode |= VMXNET3_RXM_ALL_MULTI;
			}
		}

	if (!(new_mode & VMXNET3_RXM_MCAST)) {
		rxConf->mfTableLen = 0;
		rxConf->mfTablePA = 0;
	}

	FUNC13(&adapter->cmd_lock, flags);
	if (new_mode != rxConf->rxMode) {
		rxConf->rxMode = FUNC2(new_mode);
		FUNC0(adapter, VMXNET3_REG_CMD,
				       VMXNET3_CMD_UPDATE_RX_MODE);
		FUNC0(adapter, VMXNET3_REG_CMD,
				       VMXNET3_CMD_UPDATE_VLAN_FILTERS);
	}

	FUNC0(adapter, VMXNET3_REG_CMD,
			       VMXNET3_CMD_UPDATE_MAC_FILTERS);
	FUNC14(&adapter->cmd_lock, flags);

	if (new_table_pa_valid)
		FUNC6(&adapter->pdev->dev, new_table_pa,
				 rxConf->mfTableLen, PCI_DMA_TODEVICE);
	FUNC7(new_table);
}