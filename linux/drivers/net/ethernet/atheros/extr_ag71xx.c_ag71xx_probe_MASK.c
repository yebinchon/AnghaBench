#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct resource {scalar_t__ start; } ;
struct TYPE_15__ {struct device_node* of_node; } ;
struct platform_device {TYPE_3__ dev; } ;
struct net_device {int min_mtu; int /*<<< orphan*/  irq; int /*<<< orphan*/  dev_addr; scalar_t__ max_mtu; int /*<<< orphan*/ * netdev_ops; } ;
struct device_node {int dummy; } ;
struct ag71xx_desc {int dummy; } ;
struct ag71xx_dcfg {void const* fifodata; scalar_t__ max_frame_len; } ;
struct TYPE_14__ {void* order; int /*<<< orphan*/  desc_split; } ;
struct TYPE_13__ {void* order; } ;
struct ag71xx {int mac_idx; void const* clk_eth; void const* mac_reset; int phy_if_mode; scalar_t__ mac_base; int /*<<< orphan*/  napi; scalar_t__ stop_desc_dma; TYPE_4__* stop_desc; TYPE_2__ tx_ring; int /*<<< orphan*/  rx_buf_offset; TYPE_1__ rx_ring; int /*<<< orphan*/  oom_timer; int /*<<< orphan*/  restart_work; int /*<<< orphan*/  fifodata; int /*<<< orphan*/  msg_enable; struct ag71xx_dcfg const* dcfg; struct net_device* ndev; struct platform_device* pdev; } ;
struct TYPE_16__ {scalar_t__ next; scalar_t__ ctrl; scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  AG71XX_DEFAULT_MSG_ENABLE ; 
 int /*<<< orphan*/  AG71XX_NAPI_WEIGHT ; 
 int /*<<< orphan*/  AG71XX_REG_MAC_CFG1 ; 
 int AG71XX_RX_RING_SIZE_DEFAULT ; 
 int AG71XX_TX_RING_DS_PER_PKT ; 
 int AG71XX_TX_RING_SIZE_DEFAULT ; 
 int /*<<< orphan*/  AG71XX_TX_RING_SPLIT ; 
 int /*<<< orphan*/  AR7100 ; 
 int /*<<< orphan*/  AR9130 ; 
 int FUNC0 (scalar_t__*) ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC2 (void const*) ; 
 scalar_t__ NET_IP_ALIGN ; 
 int /*<<< orphan*/  NET_SKB_PAD ; 
 int FUNC3 (void const*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (struct ag71xx*) ; 
 int /*<<< orphan*/  ag71xx_interrupt ; 
 scalar_t__ FUNC6 (struct ag71xx*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct ag71xx*) ; 
 int /*<<< orphan*/  FUNC9 (struct ag71xx*) ; 
 int /*<<< orphan*/  ag71xx_netdev_ops ; 
 int /*<<< orphan*/  ag71xx_oom_timer_handler ; 
 int /*<<< orphan*/  ag71xx_poll ; 
 int /*<<< orphan*/  ag71xx_restart_work_func ; 
 void* FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (struct ag71xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__* ar71xx_addr_ar7100 ; 
 int /*<<< orphan*/  FUNC12 (void const*) ; 
 int FUNC13 (void const*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*) ; 
 struct net_device* FUNC15 (TYPE_3__*,int) ; 
 void const* FUNC16 (TYPE_3__*,char*) ; 
 scalar_t__ FUNC17 (TYPE_3__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC18 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct net_device*) ; 
 void const* FUNC19 (TYPE_3__*,char*) ; 
 TYPE_4__* FUNC20 (TYPE_3__*,int,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,void const*,int) ; 
 struct ag71xx* FUNC25 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC26 (struct ag71xx*,int /*<<< orphan*/ ,struct net_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC27 (struct ag71xx*,int /*<<< orphan*/ ,struct net_device*,char*,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ag71xx_dcfg* FUNC30 (TYPE_3__*) ; 
 void* FUNC31 (struct device_node*) ; 
 int FUNC32 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC33 (int) ; 
 int /*<<< orphan*/  FUNC34 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC35 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (struct platform_device*,struct net_device*) ; 
 int /*<<< orphan*/  probe ; 
 int FUNC37 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC38 (struct resource*) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC40(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	const struct ag71xx_dcfg *dcfg;
	struct net_device *ndev;
	struct resource *res;
	const void *mac_addr;
	int tx_size, err, i;
	struct ag71xx *ag;

	if (!np)
		return -ENODEV;

	ndev = FUNC15(&pdev->dev, sizeof(*ag));
	if (!ndev)
		return -ENOMEM;

	res = FUNC35(pdev, IORESOURCE_MEM, 0);
	if (!res)
		return -EINVAL;

	dcfg = FUNC30(&pdev->dev);
	if (!dcfg)
		return -EINVAL;

	ag = FUNC25(ndev);
	ag->mac_idx = -1;
	for (i = 0; i < FUNC0(ar71xx_addr_ar7100); i++) {
		if (ar71xx_addr_ar7100[i] == res->start)
			ag->mac_idx = i;
	}

	if (ag->mac_idx < 0) {
		FUNC26(ag, probe, ndev, "unknown mac idx\n");
		return -EINVAL;
	}

	ag->clk_eth = FUNC16(&pdev->dev, "eth");
	if (FUNC2(ag->clk_eth)) {
		FUNC26(ag, probe, ndev, "Failed to get eth clk.\n");
		return FUNC3(ag->clk_eth);
	}

	FUNC4(ndev, &pdev->dev);

	ag->pdev = pdev;
	ag->ndev = ndev;
	ag->dcfg = dcfg;
	ag->msg_enable = FUNC28(-1, AG71XX_DEFAULT_MSG_ENABLE);
	FUNC24(ag->fifodata, dcfg->fifodata, sizeof(ag->fifodata));

	ag->mac_reset = FUNC19(&pdev->dev, "mac");
	if (FUNC2(ag->mac_reset)) {
		FUNC26(ag, probe, ndev, "missing mac reset\n");
		err = FUNC3(ag->mac_reset);
		goto err_free;
	}

	ag->mac_base = FUNC17(&pdev->dev, res->start,
					    FUNC38(res));
	if (!ag->mac_base) {
		err = -ENOMEM;
		goto err_free;
	}

	ndev->irq = FUNC34(pdev, 0);
	err = FUNC18(&pdev->dev, ndev->irq, ag71xx_interrupt,
			       0x0, FUNC14(&pdev->dev), ndev);
	if (err) {
		FUNC26(ag, probe, ndev, "unable to request IRQ %d\n",
			  ndev->irq);
		goto err_free;
	}

	ndev->netdev_ops = &ag71xx_netdev_ops;

	FUNC1(&ag->restart_work, ag71xx_restart_work_func);
	FUNC39(&ag->oom_timer, ag71xx_oom_timer_handler, 0);

	tx_size = AG71XX_TX_RING_SIZE_DEFAULT;
	ag->rx_ring.order = FUNC10(AG71XX_RX_RING_SIZE_DEFAULT);

	ndev->min_mtu = 68;
	ndev->max_mtu = dcfg->max_frame_len - FUNC7(0);

	ag->rx_buf_offset = NET_SKB_PAD;
	if (!FUNC6(ag, AR7100) && !FUNC6(ag, AR9130))
		ag->rx_buf_offset += NET_IP_ALIGN;

	if (FUNC6(ag, AR7100)) {
		ag->tx_ring.desc_split = AG71XX_TX_RING_SPLIT;
		tx_size *= AG71XX_TX_RING_DS_PER_PKT;
	}
	ag->tx_ring.order = FUNC10(tx_size);

	ag->stop_desc = FUNC20(&pdev->dev,
					    sizeof(struct ag71xx_desc),
					    &ag->stop_desc_dma, GFP_KERNEL);
	if (!ag->stop_desc) {
		err = -ENOMEM;
		goto err_free;
	}

	ag->stop_desc->data = 0;
	ag->stop_desc->ctrl = 0;
	ag->stop_desc->next = (u32)ag->stop_desc_dma;

	mac_addr = FUNC31(np);
	if (!FUNC2(mac_addr))
		FUNC24(ndev->dev_addr, mac_addr, ETH_ALEN);
	if (FUNC2(mac_addr) || !FUNC23(ndev->dev_addr)) {
		FUNC26(ag, probe, ndev, "invalid MAC address, using random address\n");
		FUNC21(ndev->dev_addr);
	}

	ag->phy_if_mode = FUNC32(np);
	if (ag->phy_if_mode < 0) {
		FUNC26(ag, probe, ndev, "missing phy-mode property in DT\n");
		err = ag->phy_if_mode;
		goto err_free;
	}

	FUNC29(ndev, &ag->napi, ag71xx_poll, AG71XX_NAPI_WEIGHT);

	err = FUNC13(ag->clk_eth);
	if (err) {
		FUNC26(ag, probe, ndev, "Failed to enable eth clk.\n");
		goto err_free;
	}

	FUNC11(ag, AG71XX_REG_MAC_CFG1, 0);

	FUNC5(ag);

	err = FUNC8(ag);
	if (err)
		goto err_put_clk;

	FUNC36(pdev, ndev);

	err = FUNC37(ndev);
	if (err) {
		FUNC26(ag, probe, ndev, "unable to register net device\n");
		FUNC36(pdev, NULL);
		goto err_mdio_remove;
	}

	FUNC27(ag, probe, ndev, "Atheros AG71xx at 0x%08lx, irq %d, mode:%s\n",
		   (unsigned long)ag->mac_base, ndev->irq,
		   FUNC33(ag->phy_if_mode));

	return 0;

err_mdio_remove:
	FUNC9(ag);
err_put_clk:
	FUNC12(ag->clk_eth);
err_free:
	FUNC22(ndev);
	return err;
}