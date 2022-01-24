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
struct w5300_priv {int /*<<< orphan*/  napi; struct net_device* ndev; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct net_device {int /*<<< orphan*/  features; int /*<<< orphan*/  watchdog_timeo; int /*<<< orphan*/ * ethtool_ops; int /*<<< orphan*/ * netdev_ops; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  NETIF_F_VLAN_CHALLENGED ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ *) ; 
 struct net_device* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 struct w5300_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,struct net_device*) ; 
 int FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  w5300_ethtool_ops ; 
 int FUNC8 (struct platform_device*) ; 
 int /*<<< orphan*/  w5300_napi_poll ; 
 int /*<<< orphan*/  w5300_netdev_ops ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct w5300_priv *priv;
	struct net_device *ndev;
	int err;

	ndev = FUNC1(sizeof(*priv));
	if (!ndev)
		return -ENOMEM;
	FUNC0(ndev, &pdev->dev);
	FUNC5(pdev, ndev);
	priv = FUNC3(ndev);
	priv->ndev = ndev;

	ndev->netdev_ops = &w5300_netdev_ops;
	ndev->ethtool_ops = &w5300_ethtool_ops;
	ndev->watchdog_timeo = HZ;
	FUNC4(ndev, &priv->napi, w5300_napi_poll, 16);

	/* This chip doesn't support VLAN packets with normal MTU,
	 * so disable VLAN for this device.
	 */
	ndev->features |= NETIF_F_VLAN_CHALLENGED;

	err = FUNC6(ndev);
	if (err < 0)
		goto err_register;

	err = FUNC8(pdev);
	if (err < 0)
		goto err_hw_probe;

	return 0;

err_hw_probe:
	FUNC7(ndev);
err_register:
	FUNC2(ndev);
	return err;
}