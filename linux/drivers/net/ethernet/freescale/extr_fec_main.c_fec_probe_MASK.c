#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; int /*<<< orphan*/  name; TYPE_1__* id_entry; } ;
struct of_device_id {TYPE_1__* data; } ;
struct net_device {int /*<<< orphan*/  dev; } ;
struct fec_platform_data {int phy; } ;
struct fec_enet_private {int quirks; int num_rx_queues; int num_tx_queues; int wol_flag; int phy_interface; int ptp_clk_on; int bufdesc_ex; int* irq; int /*<<< orphan*/ * clk_ipg; int /*<<< orphan*/ * clk_ahb; int /*<<< orphan*/ * reg_phy; int /*<<< orphan*/  tx_timeout_work; int /*<<< orphan*/  rx_copybreak; int /*<<< orphan*/  dev_id; scalar_t__ ptp_clock; int /*<<< orphan*/  mdio_done; int /*<<< orphan*/ * clk_ptp; int /*<<< orphan*/ * clk_ref; int /*<<< orphan*/  ptp_clk_mutex; int /*<<< orphan*/ * clk_enet_out; int /*<<< orphan*/  itr_clk_rate; struct device_node* phy_node; struct platform_device* pdev; int /*<<< orphan*/ * hwp; int /*<<< orphan*/  pause_flag; struct net_device* netdev; } ;
struct device_node {int dummy; } ;
typedef  int /*<<< orphan*/  irq_name ;
struct TYPE_20__ {int driver_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  COPYBREAK_DEFAULT ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  FEC_MDIO_PM_TIMEOUT ; 
 int /*<<< orphan*/  FEC_PAUSE_FLAG_AUTONEG ; 
 int FEC_QUIRK_ERR006687 ; 
 int FEC_QUIRK_HAS_BUFDESC_EX ; 
 int FEC_QUIRK_HAS_GBIT ; 
 scalar_t__ FEC_STATS_SIZE ; 
 int FEC_WOL_HAS_MAGIC_PACKET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int PHY_INTERFACE_MODE_MII ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,TYPE_2__*) ; 
 struct net_device* FUNC4 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,char*,...) ; 
 struct fec_platform_data* FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 void* FUNC11 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/ * FUNC12 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (TYPE_2__*,char*) ; 
 int FUNC14 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  fec_dt_ids ; 
 int FUNC15 (struct net_device*,int) ; 
 int FUNC16 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct platform_device*,int*,int*) ; 
 int FUNC18 (struct net_device*) ; 
 int /*<<< orphan*/  fec_enet_interrupt ; 
 int FUNC19 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC20 (struct fec_enet_private*) ; 
 int /*<<< orphan*/  fec_enet_timeout_work ; 
 int /*<<< orphan*/  FUNC21 (struct platform_device*,int) ; 
 int /*<<< orphan*/  FUNC22 (struct platform_device*) ; 
 int FUNC23 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC24 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (struct net_device*,char*,int /*<<< orphan*/ ) ; 
 struct fec_enet_private* FUNC28 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC29 (struct net_device*) ; 
 int FUNC30 (struct device_node*) ; 
 scalar_t__ FUNC31 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC32 (char*) ; 
 struct of_device_id* FUNC33 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 struct device_node* FUNC34 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC35 (struct device_node*) ; 
 struct device_node* FUNC36 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC37 (struct device_node*) ; 
 scalar_t__ FUNC38 (struct device_node*) ; 
 int FUNC39 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC40 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC41 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC42 (TYPE_2__*) ; 
 int FUNC43 (struct platform_device*,int) ; 
 int FUNC44 (struct platform_device*,char*) ; 
 int /*<<< orphan*/  FUNC45 (struct platform_device*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC46 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC47 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC48 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC49 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC50 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC51 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC52 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC53 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC54 (TYPE_2__*) ; 
 int FUNC55 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC56 (int /*<<< orphan*/ *) ; 
 int FUNC57 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC58 (char*,int,char*,int) ; 

__attribute__((used)) static int
FUNC59(struct platform_device *pdev)
{
	struct fec_enet_private *fep;
	struct fec_platform_data *pdata;
	struct net_device *ndev;
	int i, irq, ret = 0;
	const struct of_device_id *of_id;
	static int dev_id;
	struct device_node *np = pdev->dev.of_node, *phy_node;
	int num_tx_qs;
	int num_rx_qs;
	char irq_name[8];
	int irq_cnt;

	FUNC17(pdev, &num_tx_qs, &num_rx_qs);

	/* Init network device */
	ndev = FUNC4(sizeof(struct fec_enet_private) +
				  FEC_STATS_SIZE, num_tx_qs, num_rx_qs);
	if (!ndev)
		return -ENOMEM;

	FUNC3(ndev, &pdev->dev);

	/* setup board info structure */
	fep = FUNC28(ndev);

	of_id = FUNC33(fec_dt_ids, &pdev->dev);
	if (of_id)
		pdev->id_entry = of_id->data;
	fep->quirks = pdev->id_entry->driver_data;

	fep->netdev = ndev;
	fep->num_rx_queues = num_rx_qs;
	fep->num_tx_queues = num_tx_qs;

#if !defined(CONFIG_M5272)
	/* default enable pause frame auto negotiation */
	if (fep->quirks & FEC_QUIRK_HAS_GBIT)
		fep->pause_flag |= FEC_PAUSE_FLAG_AUTONEG;
#endif

	/* Select default pin state */
	FUNC41(&pdev->dev);

	fep->hwp = FUNC12(pdev, 0);
	if (FUNC1(fep->hwp)) {
		ret = FUNC2(fep->hwp);
		goto failed_ioremap;
	}

	fep->pdev = pdev;
	fep->dev_id = dev_id++;

	FUNC45(pdev, ndev);

	if ((FUNC32("fsl,imx6q") ||
	     FUNC32("fsl,imx6dl")) &&
	    !FUNC40(np, "fsl,err006687-workaround-present"))
		fep->quirks |= FEC_QUIRK_ERR006687;

	if (FUNC31(np, "fsl,magic-packet", NULL))
		fep->wol_flag |= FEC_WOL_HAS_MAGIC_PACKET;

	phy_node = FUNC36(np, "phy-handle", 0);
	if (!phy_node && FUNC38(np)) {
		ret = FUNC39(np);
		if (ret < 0) {
			FUNC8(&pdev->dev,
				"broken fixed-link specification\n");
			goto failed_phy;
		}
		phy_node = FUNC34(np);
	}
	fep->phy_node = phy_node;

	ret = FUNC30(pdev->dev.of_node);
	if (ret < 0) {
		pdata = FUNC9(&pdev->dev);
		if (pdata)
			fep->phy_interface = pdata->phy;
		else
			fep->phy_interface = PHY_INTERFACE_MODE_MII;
	} else {
		fep->phy_interface = ret;
	}

	fep->clk_ipg = FUNC11(&pdev->dev, "ipg");
	if (FUNC1(fep->clk_ipg)) {
		ret = FUNC2(fep->clk_ipg);
		goto failed_clk;
	}

	fep->clk_ahb = FUNC11(&pdev->dev, "ahb");
	if (FUNC1(fep->clk_ahb)) {
		ret = FUNC2(fep->clk_ahb);
		goto failed_clk;
	}

	fep->itr_clk_rate = FUNC6(fep->clk_ahb);

	/* enet_out is optional, depends on board */
	fep->clk_enet_out = FUNC11(&pdev->dev, "enet_out");
	if (FUNC1(fep->clk_enet_out))
		fep->clk_enet_out = NULL;

	fep->ptp_clk_on = false;
	FUNC26(&fep->ptp_clk_mutex);

	/* clk_ref is optional, depends on board */
	fep->clk_ref = FUNC11(&pdev->dev, "enet_clk_ref");
	if (FUNC1(fep->clk_ref))
		fep->clk_ref = NULL;

	fep->bufdesc_ex = fep->quirks & FEC_QUIRK_HAS_BUFDESC_EX;
	fep->clk_ptp = FUNC11(&pdev->dev, "ptp");
	if (FUNC1(fep->clk_ptp)) {
		fep->clk_ptp = NULL;
		fep->bufdesc_ex = false;
	}

	ret = FUNC15(ndev, true);
	if (ret)
		goto failed_clk;

	ret = FUNC7(fep->clk_ipg);
	if (ret)
		goto failed_clk_ipg;
	ret = FUNC7(fep->clk_ahb);
	if (ret)
		goto failed_clk_ahb;

	fep->reg_phy = FUNC13(&pdev->dev, "phy");
	if (!FUNC1(fep->reg_phy)) {
		ret = FUNC57(fep->reg_phy);
		if (ret) {
			FUNC8(&pdev->dev,
				"Failed to enable phy regulator: %d\n", ret);
			goto failed_regulator;
		}
	} else {
		if (FUNC2(fep->reg_phy) == -EPROBE_DEFER) {
			ret = -EPROBE_DEFER;
			goto failed_regulator;
		}
		fep->reg_phy = NULL;
	}

	FUNC53(&pdev->dev, FEC_MDIO_PM_TIMEOUT);
	FUNC54(&pdev->dev);
	FUNC48(&pdev->dev);
	FUNC52(&pdev->dev);
	FUNC47(&pdev->dev);

	ret = FUNC23(pdev);
	if (ret)
		goto failed_reset;

	irq_cnt = FUNC16(pdev);
	if (fep->bufdesc_ex)
		FUNC21(pdev, irq_cnt);

	ret = FUNC18(ndev);
	if (ret)
		goto failed_init;

	for (i = 0; i < irq_cnt; i++) {
		FUNC58(irq_name, sizeof(irq_name), "int%d", i);
		irq = FUNC44(pdev, irq_name);
		if (irq < 0)
			irq = FUNC43(pdev, i);
		if (irq < 0) {
			ret = irq;
			goto failed_irq;
		}
		ret = FUNC14(&pdev->dev, irq, fec_enet_interrupt,
				       0, pdev->name, ndev);
		if (ret)
			goto failed_irq;

		fep->irq[i] = irq;
	}

	FUNC25(&fep->mdio_done);
	ret = FUNC19(pdev);
	if (ret)
		goto failed_mii_init;

	/* Carrier starts down, phylib will bring it up */
	FUNC29(ndev);
	FUNC15(ndev, false);
	FUNC42(&pdev->dev);

	ret = FUNC55(ndev);
	if (ret)
		goto failed_register;

	FUNC10(&ndev->dev, fep->wol_flag &
			   FEC_WOL_HAS_MAGIC_PACKET);

	if (fep->bufdesc_ex && fep->ptp_clock)
		FUNC27(ndev, "registered PHC device %d\n", fep->dev_id);

	fep->rx_copybreak = COPYBREAK_DEFAULT;
	FUNC0(&fep->tx_timeout_work, fec_enet_timeout_work);

	FUNC49(&pdev->dev);
	FUNC50(&pdev->dev);

	return 0;

failed_register:
	FUNC20(fep);
failed_mii_init:
failed_irq:
failed_init:
	FUNC22(pdev);
	if (fep->reg_phy)
		FUNC56(fep->reg_phy);
failed_reset:
	FUNC51(&pdev->dev);
	FUNC46(&pdev->dev);
failed_regulator:
	FUNC5(fep->clk_ahb);
failed_clk_ahb:
	FUNC5(fep->clk_ipg);
failed_clk_ipg:
	FUNC15(ndev, false);
failed_clk:
	if (FUNC38(np))
		FUNC37(np);
	FUNC35(phy_node);
failed_phy:
	dev_id--;
failed_ioremap:
	FUNC24(ndev);

	return ret;
}