#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct ethtool_coalesce {scalar_t__ rx_coalesce_usecs; } ;
struct TYPE_3__ {int /*<<< orphan*/  default_vlan; int /*<<< orphan*/  dual_emac; } ;
struct cpsw_priv {int tx_irq_disabled; int rx_irq_disabled; scalar_t__ coal_intvl; struct net_device* ndev; int /*<<< orphan*/  dev; int /*<<< orphan*/  dma; int /*<<< orphan*/  usage_count; int /*<<< orphan*/  cpts; int /*<<< orphan*/ * irqs_table; int /*<<< orphan*/  napi_tx; int /*<<< orphan*/  napi_rx; TYPE_2__* regs; TYPE_1__ data; int /*<<< orphan*/  ale; int /*<<< orphan*/  version; int /*<<< orphan*/  rx_ch_num; int /*<<< orphan*/  tx_ch_num; struct cpsw_priv* cpsw; } ;
struct cpsw_common {int tx_irq_disabled; int rx_irq_disabled; scalar_t__ coal_intvl; struct net_device* ndev; int /*<<< orphan*/  dev; int /*<<< orphan*/  dma; int /*<<< orphan*/  usage_count; int /*<<< orphan*/  cpts; int /*<<< orphan*/ * irqs_table; int /*<<< orphan*/  napi_tx; int /*<<< orphan*/  napi_rx; TYPE_2__* regs; TYPE_1__ data; int /*<<< orphan*/  ale; int /*<<< orphan*/  version; int /*<<< orphan*/  rx_ch_num; int /*<<< orphan*/  tx_ch_num; struct cpsw_common* cpsw; } ;
struct TYPE_4__ {int /*<<< orphan*/  flow_control; int /*<<< orphan*/  stat_port_en; int /*<<< orphan*/  ptype; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALE_ALL_PORTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cpsw_priv*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct cpsw_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct cpsw_priv*) ; 
 int FUNC9 (struct cpsw_priv*) ; 
 int /*<<< orphan*/  FUNC10 (struct cpsw_priv*) ; 
 int /*<<< orphan*/  FUNC11 (struct cpsw_priv*) ; 
 int /*<<< orphan*/  FUNC12 (struct cpsw_priv*) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*,struct ethtool_coalesce*) ; 
 int /*<<< orphan*/  cpsw_slave_open ; 
 int /*<<< orphan*/  cpsw_slave_stop ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct cpsw_priv*,int /*<<< orphan*/ ,struct cpsw_priv*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 struct cpsw_priv* FUNC20 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC21 (struct net_device*) ; 
 int FUNC22 (struct net_device*,int /*<<< orphan*/ ) ; 
 int FUNC23 (struct net_device*,int /*<<< orphan*/ ) ; 
 int FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC29(struct net_device *ndev)
{
	struct cpsw_priv *priv = FUNC20(ndev);
	struct cpsw_common *cpsw = priv->cpsw;
	int ret;
	u32 reg;

	ret = FUNC24(cpsw->dev);
	if (ret < 0) {
		FUNC25(cpsw->dev);
		return ret;
	}

	FUNC21(ndev);

	/* Notify the stack of the actual queue counts. */
	ret = FUNC23(ndev, cpsw->tx_ch_num);
	if (ret) {
		FUNC15(priv->dev, "cannot set real number of tx queues\n");
		goto err_cleanup;
	}

	ret = FUNC22(ndev, cpsw->rx_ch_num);
	if (ret) {
		FUNC15(priv->dev, "cannot set real number of rx queues\n");
		goto err_cleanup;
	}

	reg = cpsw->version;

	FUNC16(priv->dev, "initializing cpsw version %d.%d (%d)\n",
		 FUNC0(reg), FUNC1(reg),
		 FUNC2(reg));

	/* Initialize host and slave ports */
	if (!cpsw->usage_count)
		FUNC10(priv);
	FUNC18(priv, cpsw_slave_open, priv);

	/* Add default VLAN */
	if (!cpsw->data.dual_emac)
		FUNC5(priv);
	else
		FUNC6(cpsw->ale, cpsw->data.default_vlan,
				  ALE_ALL_PORTS, ALE_ALL_PORTS, 0, 0);

	/* initialize shared resources for every ndev */
	if (!cpsw->usage_count) {
		/* disable priority elevation */
		FUNC28(0, &cpsw->regs->ptype);

		/* enable statistics collection only on all ports */
		FUNC28(0x7, &cpsw->regs->stat_port_en);

		/* Enable internal fifo flow control */
		FUNC27(0x7, &cpsw->regs->flow_control);

		FUNC19(&cpsw->napi_rx);
		FUNC19(&cpsw->napi_tx);

		if (cpsw->tx_irq_disabled) {
			cpsw->tx_irq_disabled = false;
			FUNC17(cpsw->irqs_table[1]);
		}

		if (cpsw->rx_irq_disabled) {
			cpsw->rx_irq_disabled = false;
			FUNC17(cpsw->irqs_table[0]);
		}

		/* create rxqs for both infs in dual mac as they use same pool
		 * and must be destroyed together when no users.
		 */
		ret = FUNC7(cpsw);
		if (ret < 0)
			goto err_cleanup;

		ret = FUNC9(priv);
		if (ret < 0)
			goto err_cleanup;

		if (FUNC14(cpsw->cpts))
			FUNC15(priv->dev, "error registering cpts device\n");

	}

	FUNC12(priv);

	/* Enable Interrupt pacing if configured */
	if (cpsw->coal_intvl != 0) {
		struct ethtool_coalesce coal;

		coal.rx_coalesce_usecs = cpsw->coal_intvl;
		FUNC13(ndev, &coal);
	}

	FUNC3(cpsw->dma);
	FUNC11(cpsw);
	cpsw->usage_count++;

	return 0;

err_cleanup:
	if (!cpsw->usage_count) {
		FUNC4(cpsw->dma);
		FUNC8(cpsw);
	}

	FUNC18(priv, cpsw_slave_stop, cpsw);
	FUNC26(cpsw->dev);
	FUNC21(priv->ndev);
	return ret;
}