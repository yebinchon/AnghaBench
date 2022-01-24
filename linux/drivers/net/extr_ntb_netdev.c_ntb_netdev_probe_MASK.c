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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct ntb_netdev {int /*<<< orphan*/  qp; struct pci_dev* pdev; struct net_device* ndev; } ;
struct ntb_dev {struct pci_dev* pdev; } ;
struct net_device {int /*<<< orphan*/  name; scalar_t__ mtu; int /*<<< orphan*/  max_mtu; scalar_t__ min_mtu; int /*<<< orphan*/ * ethtool_ops; int /*<<< orphan*/ * netdev_ops; int /*<<< orphan*/  addr_len; int /*<<< orphan*/  perm_addr; int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  watchdog_timeo; int /*<<< orphan*/  features; int /*<<< orphan*/  hw_features; int /*<<< orphan*/  priv_flags; } ;
struct device {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int EIO ; 
 int ENODEV ; 
 int ENOMEM ; 
 scalar_t__ ETH_HLEN ; 
 int /*<<< orphan*/  ETH_MAX_MTU ; 
 int /*<<< orphan*/  IFF_LIVE_ADDR_CHANGE ; 
 int /*<<< orphan*/  NETIF_F_HIGHDMA ; 
 int /*<<< orphan*/  NTB_TX_TIMEOUT_MS ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,struct device*) ; 
 struct net_device* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct ntb_dev* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct ntb_netdev* FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  ntb_ethtool_ops ; 
 int /*<<< orphan*/  ntb_netdev_handlers ; 
 int /*<<< orphan*/  ntb_netdev_ops ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*,struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (struct net_device*) ; 

__attribute__((used)) static int FUNC14(struct device *client_dev)
{
	struct ntb_dev *ntb;
	struct net_device *ndev;
	struct pci_dev *pdev;
	struct ntb_netdev *dev;
	int rc;

	ntb = FUNC3(client_dev->parent);
	pdev = ntb->pdev;
	if (!pdev)
		return -ENODEV;

	ndev = FUNC1(sizeof(*dev));
	if (!ndev)
		return -ENOMEM;

	FUNC0(ndev, client_dev);

	dev = FUNC9(ndev);
	dev->ndev = ndev;
	dev->pdev = pdev;
	ndev->features = NETIF_F_HIGHDMA;

	ndev->priv_flags |= IFF_LIVE_ADDR_CHANGE;

	ndev->hw_features = ndev->features;
	ndev->watchdog_timeo = FUNC8(NTB_TX_TIMEOUT_MS);

	FUNC5(ndev->perm_addr);
	FUNC7(ndev->dev_addr, ndev->perm_addr, ndev->addr_len);

	ndev->netdev_ops = &ntb_netdev_ops;
	ndev->ethtool_ops = &ntb_ethtool_ops;

	ndev->min_mtu = 0;
	ndev->max_mtu = ETH_MAX_MTU;

	dev->qp = FUNC10(ndev, client_dev,
					     &ntb_netdev_handlers);
	if (!dev->qp) {
		rc = -EIO;
		goto err;
	}

	ndev->mtu = FUNC12(dev->qp) - ETH_HLEN;

	rc = FUNC13(ndev);
	if (rc)
		goto err1;

	FUNC4(client_dev, ndev);
	FUNC2(&pdev->dev, "%s created\n", ndev->name);
	return 0;

err1:
	FUNC11(dev->qp);
err:
	FUNC6(ndev);
	return rc;
}