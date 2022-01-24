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
struct net_device {int features; int /*<<< orphan*/  name; } ;
struct device {int dummy; } ;
struct fsl_mc_device {struct device dev; } ;
struct dpaa2_eth_priv {int do_link_poll; int /*<<< orphan*/  mc_io; int /*<<< orphan*/ * percpu_stats; int /*<<< orphan*/ * percpu_extras; int /*<<< orphan*/  poll_thread; int /*<<< orphan*/  iommu_domain; struct net_device* net_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPAA2_ETH_MAX_NETDEV_QUEUES ; 
 int ENOMEM ; 
 int ENXIO ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  FSL_MC_IO_ATOMIC_CONTEXT_PORTAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int NETIF_F_IPV6_CSUM ; 
 int NETIF_F_IP_CSUM ; 
 int NETIF_F_RXCSUM ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct dpaa2_eth_priv*) ; 
 struct net_device* FUNC3 (int,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct dpaa2_eth_priv*) ; 
 int FUNC6 (struct dpaa2_eth_priv*) ; 
 int /*<<< orphan*/  FUNC7 (struct dpaa2_eth_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct device*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct dpaa2_eth_priv*) ; 
 int /*<<< orphan*/  FUNC12 (struct dpaa2_eth_priv*) ; 
 int /*<<< orphan*/  FUNC13 (struct dpaa2_eth_priv*) ; 
 int /*<<< orphan*/  FUNC14 (struct dpaa2_eth_priv*) ; 
 int /*<<< orphan*/  FUNC15 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct dpaa2_eth_priv*) ; 
 int /*<<< orphan*/  FUNC18 (struct fsl_mc_device*) ; 
 int FUNC19 (struct fsl_mc_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct device*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,struct dpaa2_eth_priv*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int FUNC24 (struct net_device*) ; 
 struct dpaa2_eth_priv* FUNC25 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC26 (struct net_device*,char*) ; 
 int /*<<< orphan*/  poll_link_state ; 
 int FUNC27 (struct net_device*) ; 
 int FUNC28 (struct dpaa2_eth_priv*,int) ; 
 int FUNC29 (struct dpaa2_eth_priv*,int) ; 
 int FUNC30 (struct dpaa2_eth_priv*) ; 
 int FUNC31 (struct dpaa2_eth_priv*) ; 
 int FUNC32 (struct fsl_mc_device*) ; 
 int /*<<< orphan*/  FUNC33 (struct dpaa2_eth_priv*) ; 
 int FUNC34 (struct fsl_mc_device*) ; 

__attribute__((used)) static int FUNC35(struct fsl_mc_device *dpni_dev)
{
	struct device *dev;
	struct net_device *net_dev = NULL;
	struct dpaa2_eth_priv *priv = NULL;
	int err = 0;

	dev = &dpni_dev->dev;

	/* Net device */
	net_dev = FUNC3(sizeof(*priv), DPAA2_ETH_MAX_NETDEV_QUEUES);
	if (!net_dev) {
		FUNC8(dev, "alloc_etherdev_mq() failed\n");
		return -ENOMEM;
	}

	FUNC1(net_dev, dev);
	FUNC10(dev, net_dev);

	priv = FUNC25(net_dev);
	priv->net_dev = net_dev;

	priv->iommu_domain = FUNC21(dev);

	/* Obtain a MC portal */
	err = FUNC19(dpni_dev, FSL_MC_IO_ATOMIC_CONTEXT_PORTAL,
				     &priv->mc_io);
	if (err) {
		if (err == -ENXIO)
			err = -EPROBE_DEFER;
		else
			FUNC8(dev, "MC portal allocation failed\n");
		goto err_portal_alloc;
	}

	/* MC objects initialization and configuration */
	err = FUNC32(dpni_dev);
	if (err)
		goto err_dpni_setup;

	err = FUNC31(priv);
	if (err)
		goto err_dpio_setup;

	FUNC33(priv);

	err = FUNC30(priv);
	if (err)
		goto err_dpbp_setup;

	err = FUNC6(priv);
	if (err)
		goto err_bind;

	/* Add a NAPI context for each channel */
	FUNC2(priv);

	/* Percpu statistics */
	priv->percpu_stats = FUNC4(*priv->percpu_stats);
	if (!priv->percpu_stats) {
		FUNC8(dev, "alloc_percpu(percpu_stats) failed\n");
		err = -ENOMEM;
		goto err_alloc_percpu_stats;
	}
	priv->percpu_extras = FUNC4(*priv->percpu_extras);
	if (!priv->percpu_extras) {
		FUNC8(dev, "alloc_percpu(percpu_extras) failed\n");
		err = -ENOMEM;
		goto err_alloc_percpu_extras;
	}

	err = FUNC24(net_dev);
	if (err)
		goto err_netdev_init;

	/* Configure checksum offload based on current interface flags */
	err = FUNC28(priv, !!(net_dev->features & NETIF_F_RXCSUM));
	if (err)
		goto err_csum;

	err = FUNC29(priv, !!(net_dev->features &
				   (NETIF_F_IP_CSUM | NETIF_F_IPV6_CSUM)));
	if (err)
		goto err_csum;

	err = FUNC5(priv);
	if (err)
		goto err_alloc_rings;

	err = FUNC34(dpni_dev);
	if (err) {
		FUNC26(net_dev, "Failed to set link interrupt, fall back to polling\n");
		priv->poll_thread = FUNC22(poll_link_state, priv,
						"%s_poll_link", net_dev->name);
		if (FUNC0(priv->poll_thread)) {
			FUNC8(dev, "Error starting polling thread\n");
			goto err_poll_thread;
		}
		priv->do_link_poll = true;
	}

	err = FUNC27(net_dev);
	if (err < 0) {
		FUNC8(dev, "register_netdev() failed\n");
		goto err_netdev_reg;
	}

#ifdef CONFIG_DEBUG_FS
	dpaa2_dbg_add(priv);
#endif

	FUNC9(dev, "Probed interface %s\n", net_dev->name);
	return 0;

err_netdev_reg:
	if (priv->do_link_poll)
		FUNC23(priv->poll_thread);
	else
		FUNC18(dpni_dev);
err_poll_thread:
	FUNC17(priv);
err_alloc_rings:
err_csum:
err_netdev_init:
	FUNC16(priv->percpu_extras);
err_alloc_percpu_extras:
	FUNC16(priv->percpu_stats);
err_alloc_percpu_stats:
	FUNC7(priv);
err_bind:
	FUNC12(priv);
err_dpbp_setup:
	FUNC13(priv);
err_dpio_setup:
	FUNC14(priv);
err_dpni_setup:
	FUNC20(priv->mc_io);
err_portal_alloc:
	FUNC10(dev, NULL);
	FUNC15(net_dev);

	return err;
}