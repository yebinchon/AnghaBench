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
typedef  void* u32 ;
struct netcp_intf {void* rx_channel; int /*<<< orphan*/  ndev_dev; int /*<<< orphan*/  dma_chan_name; TYPE_3__* netcp_device; void** rx_fdq; void* rx_queue_id; scalar_t__* rx_queue_depths; void* rx_queue; void* tx_compl_q; void* tx_compl_qid; void* tx_pool; int /*<<< orphan*/  tx_pool_region_id; int /*<<< orphan*/  tx_pool_size; void* rx_pool; int /*<<< orphan*/  rx_pool_region_id; int /*<<< orphan*/  rx_pool_size; } ;
struct net_device {char* name; } ;
struct knav_queue_notify_config {struct netcp_intf* fn_arg; int /*<<< orphan*/  fn; } ;
struct TYPE_4__ {int einfo_present; int psinfo_present; int psinfo_at_sop; void** fdq; int /*<<< orphan*/  thresh; void* dst_q; int /*<<< orphan*/  sop_offset; int /*<<< orphan*/  desc_type; int /*<<< orphan*/  err_mode; } ;
struct TYPE_5__ {TYPE_1__ rx; } ;
struct knav_dma_cfg {TYPE_2__ u; int /*<<< orphan*/  direction; } ;
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  config ;
struct TYPE_6__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_DESC_HOST ; 
 int /*<<< orphan*/  DMA_DEV_TO_MEM ; 
 int /*<<< orphan*/  DMA_DROP ; 
 int /*<<< orphan*/  DMA_THRESH_NONE ; 
 scalar_t__ FUNC0 (void*) ; 
 scalar_t__ FUNC1 (void*) ; 
 int KNAV_DMA_FDQ_PER_CHAN ; 
 void* KNAV_QUEUE_GP ; 
 int /*<<< orphan*/  KNAV_QUEUE_SET_NOTIFIER ; 
 int /*<<< orphan*/  NETCP_SOP_OFFSET ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 void* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct knav_dma_cfg*) ; 
 void* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (void*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 void* FUNC9 (void*) ; 
 void* FUNC10 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct knav_dma_cfg*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct netcp_intf*) ; 
 int /*<<< orphan*/  netcp_rx_notify ; 
 int /*<<< orphan*/  netcp_tx_notify ; 
 struct netcp_intf* FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int,char*,char*,...) ; 

__attribute__((used)) static int FUNC15(struct net_device *ndev)
{
	struct netcp_intf *netcp = FUNC13(ndev);
	struct knav_queue_notify_config notify_cfg;
	struct knav_dma_cfg config;
	u32 last_fdq = 0;
	u8 name[16];
	int ret;
	int i;

	/* Create Rx/Tx descriptor pools */
	FUNC14(name, sizeof(name), "rx-pool-%s", ndev->name);
	netcp->rx_pool = FUNC6(name, netcp->rx_pool_size,
						netcp->rx_pool_region_id);
	if (FUNC1(netcp->rx_pool)) {
		FUNC4(netcp->ndev_dev, "Couldn't create rx pool\n");
		ret = FUNC2(netcp->rx_pool);
		goto fail;
	}

	FUNC14(name, sizeof(name), "tx-pool-%s", ndev->name);
	netcp->tx_pool = FUNC6(name, netcp->tx_pool_size,
						netcp->tx_pool_region_id);
	if (FUNC1(netcp->tx_pool)) {
		FUNC4(netcp->ndev_dev, "Couldn't create tx pool\n");
		ret = FUNC2(netcp->tx_pool);
		goto fail;
	}

	/* open Tx completion queue */
	FUNC14(name, sizeof(name), "tx-compl-%s", ndev->name);
	netcp->tx_compl_q = FUNC10(name, netcp->tx_compl_qid, 0);
	if (FUNC0(netcp->tx_compl_q)) {
		ret = FUNC2(netcp->tx_compl_q);
		goto fail;
	}
	netcp->tx_compl_qid = FUNC9(netcp->tx_compl_q);

	/* Set notification for Tx completion */
	notify_cfg.fn = netcp_tx_notify;
	notify_cfg.fn_arg = netcp;
	ret = FUNC7(netcp->tx_compl_q,
					KNAV_QUEUE_SET_NOTIFIER,
					(unsigned long)&notify_cfg);
	if (ret)
		goto fail;

	FUNC8(netcp->tx_compl_q);

	/* open Rx completion queue */
	FUNC14(name, sizeof(name), "rx-compl-%s", ndev->name);
	netcp->rx_queue = FUNC10(name, netcp->rx_queue_id, 0);
	if (FUNC0(netcp->rx_queue)) {
		ret = FUNC2(netcp->rx_queue);
		goto fail;
	}
	netcp->rx_queue_id = FUNC9(netcp->rx_queue);

	/* Set notification for Rx completion */
	notify_cfg.fn = netcp_rx_notify;
	notify_cfg.fn_arg = netcp;
	ret = FUNC7(netcp->rx_queue,
					KNAV_QUEUE_SET_NOTIFIER,
					(unsigned long)&notify_cfg);
	if (ret)
		goto fail;

	FUNC8(netcp->rx_queue);

	/* open Rx FDQs */
	for (i = 0; i < KNAV_DMA_FDQ_PER_CHAN && netcp->rx_queue_depths[i];
	     ++i) {
		FUNC14(name, sizeof(name), "rx-fdq-%s-%d", ndev->name, i);
		netcp->rx_fdq[i] = FUNC10(name, KNAV_QUEUE_GP, 0);
		if (FUNC0(netcp->rx_fdq[i])) {
			ret = FUNC2(netcp->rx_fdq[i]);
			goto fail;
		}
	}

	FUNC11(&config, 0, sizeof(config));
	config.direction		= DMA_DEV_TO_MEM;
	config.u.rx.einfo_present	= true;
	config.u.rx.psinfo_present	= true;
	config.u.rx.err_mode		= DMA_DROP;
	config.u.rx.desc_type		= DMA_DESC_HOST;
	config.u.rx.psinfo_at_sop	= false;
	config.u.rx.sop_offset		= NETCP_SOP_OFFSET;
	config.u.rx.dst_q		= netcp->rx_queue_id;
	config.u.rx.thresh		= DMA_THRESH_NONE;

	for (i = 0; i < KNAV_DMA_FDQ_PER_CHAN; ++i) {
		if (netcp->rx_fdq[i])
			last_fdq = FUNC9(netcp->rx_fdq[i]);
		config.u.rx.fdq[i] = last_fdq;
	}

	netcp->rx_channel = FUNC5(netcp->netcp_device->device,
					netcp->dma_chan_name, &config);
	if (FUNC0(netcp->rx_channel)) {
		FUNC4(netcp->ndev_dev, "failed opening rx chan(%s\n",
			netcp->dma_chan_name);
		ret = FUNC2(netcp->rx_channel);
		goto fail;
	}

	FUNC3(netcp->ndev_dev, "opened RX channel: %p\n", netcp->rx_channel);
	return 0;

fail:
	FUNC12(netcp);
	return ret;
}