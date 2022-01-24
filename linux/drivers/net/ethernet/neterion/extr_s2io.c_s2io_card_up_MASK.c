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
typedef  int u16 ;
struct config_param {int rx_ring_num; scalar_t__ intr_type; scalar_t__ napi; } ;
struct mac_info {struct ring_info* rings; } ;
struct s2io_nic {int lro_max_aggr_per_sess; struct config_param config; int /*<<< orphan*/  state; int /*<<< orphan*/  alarm_timer; scalar_t__ all_multi_pos; scalar_t__ m_cast_flg; scalar_t__ promisc_flg; int /*<<< orphan*/  napi; struct mac_info mac_control; struct net_device* dev; } ;
struct ring_info {int mtu; int lro; int /*<<< orphan*/  napi; int /*<<< orphan*/  rx_bufs_left; } ;
struct net_device {int mtu; int features; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,...) ; 
 int EIO ; 
 int /*<<< orphan*/  ENABLE_INTRS ; 
 int /*<<< orphan*/  ENA_ALL_INTRS ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ERR_DBG ; 
 int HZ ; 
 int /*<<< orphan*/  INFO_DBG ; 
 scalar_t__ INTA ; 
 scalar_t__ MSI_X ; 
 int NETIF_F_LRO ; 
 int RX_TRAFFIC_INTR ; 
 int TX_PIC_INTR ; 
 int TX_TRAFFIC_INTR ; 
 int /*<<< orphan*/  __S2IO_STATE_CARD_UP ; 
 int /*<<< orphan*/  FUNC1 (struct s2io_nic*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct s2io_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct s2io_nic*,struct ring_info*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct s2io_nic*) ; 
 int FUNC5 (struct s2io_nic*) ; 
 scalar_t__ jiffies ; 
 int lro_max_pkts ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct s2io_nic*) ; 
 int /*<<< orphan*/  s2io_alarm_handle ; 
 int /*<<< orphan*/  FUNC9 (struct s2io_nic*) ; 
 int /*<<< orphan*/  FUNC10 (struct s2io_nic*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (struct s2io_nic*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct s2io_nic *sp)
{
	int i, ret = 0;
	struct config_param *config;
	struct mac_info *mac_control;
	struct net_device *dev = sp->dev;
	u16 interruptible;

	/* Initialize the H/W I/O registers */
	ret = FUNC5(sp);
	if (ret != 0) {
		FUNC0(ERR_DBG, "%s: H/W initialization failed\n",
			  dev->name);
		if (ret != -EIO)
			FUNC10(sp);
		return ret;
	}

	/*
	 * Initializing the Rx buffers. For now we are considering only 1
	 * Rx ring and initializing buffers into 30 Rx blocks
	 */
	config = &sp->config;
	mac_control = &sp->mac_control;

	for (i = 0; i < config->rx_ring_num; i++) {
		struct ring_info *ring = &mac_control->rings[i];

		ring->mtu = dev->mtu;
		ring->lro = !!(dev->features & NETIF_F_LRO);
		ret = FUNC3(sp, ring, 1);
		if (ret) {
			FUNC0(ERR_DBG, "%s: Out of memory in Open\n",
				  dev->name);
			FUNC10(sp);
			FUNC4(sp);
			return -ENOMEM;
		}
		FUNC0(INFO_DBG, "Buf in ring:%d is %d:\n", i,
			  ring->rx_bufs_left);
	}

	/* Initialise napi */
	if (config->napi) {
		if (config->intr_type ==  MSI_X) {
			for (i = 0; i < sp->config.rx_ring_num; i++)
				FUNC7(&sp->mac_control.rings[i].napi);
		} else {
			FUNC7(&sp->napi);
		}
	}

	/* Maintain the state prior to the open */
	if (sp->promisc_flg)
		sp->promisc_flg = 0;
	if (sp->m_cast_flg) {
		sp->m_cast_flg = 0;
		sp->all_multi_pos = 0;
	}

	/* Setting its receive mode */
	FUNC11(dev);

	if (dev->features & NETIF_F_LRO) {
		/* Initialize max aggregatable pkts per session based on MTU */
		sp->lro_max_aggr_per_sess = ((1<<16) - 1) / dev->mtu;
		/* Check if we can use (if specified) user provided value */
		if (lro_max_pkts < sp->lro_max_aggr_per_sess)
			sp->lro_max_aggr_per_sess = lro_max_pkts;
	}

	/* Enable Rx Traffic and interrupts on the NIC */
	if (FUNC13(sp)) {
		FUNC0(ERR_DBG, "%s: Starting NIC failed\n", dev->name);
		FUNC10(sp);
		FUNC4(sp);
		return -ENODEV;
	}

	/* Add interrupt service routine */
	if (FUNC8(sp) != 0) {
		if (sp->config.intr_type == MSI_X)
			FUNC9(sp);
		FUNC10(sp);
		FUNC4(sp);
		return -ENODEV;
	}

	FUNC14(&sp->alarm_timer, s2io_alarm_handle, 0);
	FUNC6(&sp->alarm_timer, jiffies + HZ / 2);

	FUNC12(__S2IO_STATE_CARD_UP, &sp->state);

	/*  Enable select interrupts */
	FUNC2(sp, ENA_ALL_INTRS, ENABLE_INTRS);
	if (sp->config.intr_type != INTA) {
		interruptible = TX_TRAFFIC_INTR | TX_PIC_INTR;
		FUNC1(sp, interruptible, ENABLE_INTRS);
	} else {
		interruptible = TX_TRAFFIC_INTR | RX_TRAFFIC_INTR;
		interruptible |= TX_PIC_INTR;
		FUNC1(sp, interruptible, ENABLE_INTRS);
	}

	return 0;
}