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
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {struct net_device* dev; } ;
struct ef4_nic {int rx_prefix_size; int rx_ip_align; int rx_packet_hash_offset; int rx_packet_ts_offset; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  workqueue_name; TYPE_3__* type; int /*<<< orphan*/  interrupt_mode; TYPE_2__* msi_context; int /*<<< orphan*/ * channel; int /*<<< orphan*/  flush_wq; int /*<<< orphan*/  mac_work; TYPE_1__ mdio; int /*<<< orphan*/ * phy_op; int /*<<< orphan*/  mac_lock; int /*<<< orphan*/  stats_lock; struct net_device* net_dev; int /*<<< orphan*/  name; int /*<<< orphan*/  state; int /*<<< orphan*/  msg_enable; struct pci_dev* pci_dev; int /*<<< orphan*/  selftest_work; int /*<<< orphan*/  monitor_work; int /*<<< orphan*/  reset_work; int /*<<< orphan*/  mtd_list; int /*<<< orphan*/  biu_lock; int /*<<< orphan*/  secondary_list; int /*<<< orphan*/  node; } ;
struct TYPE_6__ {int rx_prefix_size; int rx_hash_offset; int rx_ts_offset; int /*<<< orphan*/  max_interrupt_mode; } ;
struct TYPE_5__ {int index; struct ef4_nic* efx; } ;

/* Variables and functions */
 int EF4_MAX_CHANNELS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int NET_IP_ALIGN ; 
 int /*<<< orphan*/  STATE_UNINIT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC4 (struct ef4_nic*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ef4_dummy_phy_operations ; 
 int /*<<< orphan*/  FUNC5 (struct ef4_nic*) ; 
 int /*<<< orphan*/  ef4_mac_work ; 
 int /*<<< orphan*/  ef4_monitor ; 
 int /*<<< orphan*/  ef4_reset_work ; 
 int /*<<< orphan*/  ef4_selftest_async_work ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  interrupt_mode ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 char* FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC13(struct ef4_nic *efx,
			   struct pci_dev *pci_dev, struct net_device *net_dev)
{
	int i;

	/* Initialise common structures */
	FUNC1(&efx->node);
	FUNC1(&efx->secondary_list);
	FUNC11(&efx->biu_lock);
#ifdef CONFIG_SFC_FALCON_MTD
	INIT_LIST_HEAD(&efx->mtd_list);
#endif
	FUNC2(&efx->reset_work, ef4_reset_work);
	FUNC0(&efx->monitor_work, ef4_monitor);
	FUNC0(&efx->selftest_work, ef4_selftest_async_work);
	efx->pci_dev = pci_dev;
	efx->msg_enable = debug;
	efx->state = STATE_UNINIT;
	FUNC12(efx->name, FUNC9(pci_dev), sizeof(efx->name));

	efx->net_dev = net_dev;
	efx->rx_prefix_size = efx->type->rx_prefix_size;
	efx->rx_ip_align =
		NET_IP_ALIGN ? (efx->rx_prefix_size + NET_IP_ALIGN) % 4 : 0;
	efx->rx_packet_hash_offset =
		efx->type->rx_hash_offset - efx->type->rx_prefix_size;
	efx->rx_packet_ts_offset =
		efx->type->rx_ts_offset - efx->type->rx_prefix_size;
	FUNC11(&efx->stats_lock);
	FUNC8(&efx->mac_lock);
	efx->phy_op = &ef4_dummy_phy_operations;
	efx->mdio.dev = net_dev;
	FUNC2(&efx->mac_work, ef4_mac_work);
	FUNC6(&efx->flush_wq);

	for (i = 0; i < EF4_MAX_CHANNELS; i++) {
		efx->channel[i] = FUNC4(efx, i, NULL);
		if (!efx->channel[i])
			goto fail;
		efx->msi_context[i].efx = efx;
		efx->msi_context[i].index = i;
	}

	/* Higher numbered interrupt modes are less capable! */
	efx->interrupt_mode = FUNC7(efx->type->max_interrupt_mode,
				  interrupt_mode);

	/* Would be good to use the net_dev name, but we're too early */
	FUNC10(efx->workqueue_name, sizeof(efx->workqueue_name), "sfc%s",
		 FUNC9(pci_dev));
	efx->workqueue = FUNC3(efx->workqueue_name);
	if (!efx->workqueue)
		goto fail;

	return 0;

fail:
	FUNC5(efx);
	return -ENOMEM;
}