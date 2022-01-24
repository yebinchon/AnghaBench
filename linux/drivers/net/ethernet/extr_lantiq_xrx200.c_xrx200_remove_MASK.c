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
struct TYPE_4__ {int /*<<< orphan*/  napi; } ;
struct TYPE_3__ {int /*<<< orphan*/  napi; } ;
struct xrx200_priv {int /*<<< orphan*/  clk; TYPE_2__ chan_rx; TYPE_1__ chan_tx; struct net_device* net_dev; } ;
struct platform_device {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 struct xrx200_priv* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct xrx200_priv*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct xrx200_priv *priv = FUNC3(pdev);
	struct net_device *net_dev = priv->net_dev;

	/* free stack related instances */
	FUNC2(net_dev);
	FUNC1(&priv->chan_tx.napi);
	FUNC1(&priv->chan_rx.napi);

	/* remove the actual device */
	FUNC4(net_dev);

	/* release the clock */
	FUNC0(priv->clk);

	/* shut down hardware */
	FUNC5(priv);

	return 0;
}