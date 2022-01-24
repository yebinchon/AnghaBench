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
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct net_device {int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct device {int dummy; } ;
struct fsl_mc_device {struct device dev; } ;
struct dpaa2_eth_priv {int /*<<< orphan*/  mc_io; int /*<<< orphan*/  percpu_extras; int /*<<< orphan*/  percpu_stats; int /*<<< orphan*/  poll_thread; scalar_t__ do_link_poll; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dpaa2_eth_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct dpaa2_eth_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct dpaa2_eth_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct dpaa2_eth_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct dpaa2_eth_priv*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct dpaa2_eth_priv*) ; 
 int /*<<< orphan*/  FUNC10 (struct fsl_mc_device*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 struct dpaa2_eth_priv* FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*) ; 

__attribute__((used)) static int FUNC15(struct fsl_mc_device *ls_dev)
{
	struct device *dev;
	struct net_device *net_dev;
	struct dpaa2_eth_priv *priv;

	dev = &ls_dev->dev;
	net_dev = FUNC2(dev);
	priv = FUNC13(net_dev);

#ifdef CONFIG_DEBUG_FS
	dpaa2_dbg_remove(priv);
#endif
	FUNC14(net_dev);

	if (priv->do_link_poll)
		FUNC12(priv->poll_thread);
	else
		FUNC10(ls_dev);

	FUNC9(priv);
	FUNC8(priv->percpu_stats);
	FUNC8(priv->percpu_extras);

	FUNC0(priv);
	FUNC4(priv);
	FUNC5(priv);
	FUNC6(priv);

	FUNC11(priv->mc_io);

	FUNC7(net_dev);

	FUNC1(net_dev->dev.parent, "Removed interface %s\n", net_dev->name);

	return 0;
}