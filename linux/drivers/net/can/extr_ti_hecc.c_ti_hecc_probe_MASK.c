#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_14__ {int /*<<< orphan*/  mb_last; int /*<<< orphan*/  mb_first; int /*<<< orphan*/  mailbox_read; } ;
struct TYPE_11__ {int /*<<< orphan*/  freq; } ;
struct TYPE_12__ {TYPE_1__ clock; int /*<<< orphan*/  ctrlmode_supported; int /*<<< orphan*/  do_get_berr_counter; int /*<<< orphan*/  do_set_mode; int /*<<< orphan*/ * bittiming_const; } ;
struct ti_hecc_priv {struct regulator* clk; TYPE_8__ offload; struct regulator* base; TYPE_2__ can; int /*<<< orphan*/  mbx_lock; int /*<<< orphan*/  use_hecc1int; struct regulator* reg_xceiver; struct net_device* ndev; struct regulator* mbx; struct regulator* hecc_ram; } ;
struct resource {scalar_t__ start; } ;
struct regulator {int dummy; } ;
struct TYPE_13__ {struct device_node* of_node; } ;
struct platform_device {TYPE_3__ dev; } ;
struct net_device {scalar_t__ irq; int /*<<< orphan*/ * netdev_ops; int /*<<< orphan*/  flags; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAN_CTRLMODE_3_SAMPLES ; 
 int /*<<< orphan*/  CONFIG_OF ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  HECC_MAX_TX_MBOX ; 
 int /*<<< orphan*/  HECC_RX_FIRST_MBOX ; 
 int /*<<< orphan*/  HECC_RX_LAST_MBOX ; 
 int /*<<< orphan*/  IFF_ECHO ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct regulator*) ; 
 int FUNC2 (struct regulator*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,TYPE_3__*) ; 
 struct net_device* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct net_device*,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_8__*) ; 
 struct regulator* FUNC7 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct regulator*) ; 
 int FUNC9 (struct regulator*) ; 
 int /*<<< orphan*/  FUNC10 (struct regulator*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,char*,struct regulator*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 
 void* FUNC14 (TYPE_3__*,struct resource*) ; 
 struct regulator* FUNC15 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC16 (struct net_device*) ; 
 struct ti_hecc_priv* FUNC17 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC18 (struct device_node*,char*) ; 
 struct resource* FUNC19 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct resource* FUNC20 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC21 (struct platform_device*,struct net_device*) ; 
 int FUNC22 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ti_hecc_bittiming_const ; 
 int /*<<< orphan*/  ti_hecc_do_set_mode ; 
 int /*<<< orphan*/  ti_hecc_get_berr_counter ; 
 int /*<<< orphan*/  ti_hecc_mailbox_read ; 
 int /*<<< orphan*/  ti_hecc_netdev_ops ; 

__attribute__((used)) static int FUNC24(struct platform_device *pdev)
{
	struct net_device *ndev = (struct net_device *)0;
	struct ti_hecc_priv *priv;
	struct device_node *np = pdev->dev.of_node;
	struct resource *res, *irq;
	struct regulator *reg_xceiver;
	int err = -ENODEV;

	if (!FUNC0(CONFIG_OF) || !np)
		return -EINVAL;

	reg_xceiver = FUNC15(&pdev->dev, "xceiver");
	if (FUNC2(reg_xceiver) == -EPROBE_DEFER)
		return -EPROBE_DEFER;
	else if (FUNC1(reg_xceiver))
		reg_xceiver = NULL;

	ndev = FUNC4(sizeof(struct ti_hecc_priv), HECC_MAX_TX_MBOX);
	if (!ndev) {
		FUNC11(&pdev->dev, "alloc_candev failed\n");
		return -ENOMEM;
	}
	priv = FUNC17(ndev);

	/* handle hecc memory */
	res = FUNC20(pdev, IORESOURCE_MEM, "hecc");
	if (!res) {
		FUNC11(&pdev->dev, "can't get IORESOURCE_MEM hecc\n");
		return -EINVAL;
	}

	priv->base = FUNC14(&pdev->dev, res);
	if (FUNC1(priv->base)) {
		FUNC11(&pdev->dev, "hecc ioremap failed\n");
		return FUNC2(priv->base);
	}

	/* handle hecc-ram memory */
	res = FUNC20(pdev, IORESOURCE_MEM, "hecc-ram");
	if (!res) {
		FUNC11(&pdev->dev, "can't get IORESOURCE_MEM hecc-ram\n");
		return -EINVAL;
	}

	priv->hecc_ram = FUNC14(&pdev->dev, res);
	if (FUNC1(priv->hecc_ram)) {
		FUNC11(&pdev->dev, "hecc-ram ioremap failed\n");
		return FUNC2(priv->hecc_ram);
	}

	/* handle mbx memory */
	res = FUNC20(pdev, IORESOURCE_MEM, "mbx");
	if (!res) {
		FUNC11(&pdev->dev, "can't get IORESOURCE_MEM mbx\n");
		return -EINVAL;
	}

	priv->mbx = FUNC14(&pdev->dev, res);
	if (FUNC1(priv->mbx)) {
		FUNC11(&pdev->dev, "mbx ioremap failed\n");
		return FUNC2(priv->mbx);
	}

	irq = FUNC19(pdev, IORESOURCE_IRQ, 0);
	if (!irq) {
		FUNC11(&pdev->dev, "No irq resource\n");
		goto probe_exit;
	}

	priv->ndev = ndev;
	priv->reg_xceiver = reg_xceiver;
	priv->use_hecc1int = FUNC18(np, "ti,use-hecc1int");

	priv->can.bittiming_const = &ti_hecc_bittiming_const;
	priv->can.do_set_mode = ti_hecc_do_set_mode;
	priv->can.do_get_berr_counter = ti_hecc_get_berr_counter;
	priv->can.ctrlmode_supported = CAN_CTRLMODE_3_SAMPLES;

	FUNC23(&priv->mbx_lock);
	ndev->irq = irq->start;
	ndev->flags |= IFF_ECHO;
	FUNC21(pdev, ndev);
	FUNC3(ndev, &pdev->dev);
	ndev->netdev_ops = &ti_hecc_netdev_ops;

	priv->clk = FUNC7(&pdev->dev, "hecc_ck");
	if (FUNC1(priv->clk)) {
		FUNC11(&pdev->dev, "No clock available\n");
		err = FUNC2(priv->clk);
		priv->clk = NULL;
		goto probe_exit_candev;
	}
	priv->can.clock.freq = FUNC8(priv->clk);

	err = FUNC9(priv->clk);
	if (err) {
		FUNC11(&pdev->dev, "clk_prepare_enable() failed\n");
		goto probe_exit_clk;
	}

	priv->offload.mailbox_read = ti_hecc_mailbox_read;
	priv->offload.mb_first = HECC_RX_FIRST_MBOX;
	priv->offload.mb_last = HECC_RX_LAST_MBOX;
	err = FUNC5(ndev, &priv->offload);
	if (err) {
		FUNC11(&pdev->dev, "can_rx_offload_add_timestamp() failed\n");
		goto probe_exit_clk;
	}

	err = FUNC22(ndev);
	if (err) {
		FUNC11(&pdev->dev, "register_candev() failed\n");
		goto probe_exit_offload;
	}

	FUNC13(ndev);

	FUNC12(&pdev->dev, "device registered (reg_base=%p, irq=%u)\n",
		 priv->base, (u32)ndev->irq);

	return 0;

probe_exit_offload:
	FUNC6(&priv->offload);
probe_exit_clk:
	FUNC10(priv->clk);
probe_exit_candev:
	FUNC16(ndev);
probe_exit:
	return err;
}