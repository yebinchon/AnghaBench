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
struct xlgmac_resources {int /*<<< orphan*/  addr; int /*<<< orphan*/  irq; } ;
struct xlgmac_pdata {int /*<<< orphan*/  msg_enable; int /*<<< orphan*/  rss_mutex; int /*<<< orphan*/  mac_regs; int /*<<< orphan*/  dev_irq; struct net_device* netdev; struct device* dev; } ;
struct net_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,struct device*) ; 
 int /*<<< orphan*/  XLGMAC_MAX_DMA_CHANNELS ; 
 struct net_device* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  default_msg_level ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct xlgmac_pdata* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct net_device*) ; 
 int FUNC9 (struct xlgmac_pdata*) ; 

int FUNC10(struct device *dev, struct xlgmac_resources *res)
{
	struct xlgmac_pdata *pdata;
	struct net_device *netdev;
	int ret;

	netdev = FUNC1(sizeof(struct xlgmac_pdata),
				   XLGMAC_MAX_DMA_CHANNELS);

	if (!netdev) {
		FUNC2(dev, "alloc_etherdev failed\n");
		return -ENOMEM;
	}

	FUNC0(netdev, dev);
	FUNC3(dev, netdev);
	pdata = FUNC6(netdev);
	pdata->dev = dev;
	pdata->netdev = netdev;

	pdata->dev_irq = res->irq;
	pdata->mac_regs = res->addr;

	FUNC5(&pdata->rss_mutex);
	pdata->msg_enable = FUNC7(debug, default_msg_level);

	ret = FUNC9(pdata);
	if (ret) {
		FUNC2(dev, "xlgmac init failed\n");
		goto err_free_netdev;
	}

	ret = FUNC8(netdev);
	if (ret) {
		FUNC2(dev, "net device registration failed\n");
		goto err_free_netdev;
	}

	return 0;

err_free_netdev:
	FUNC4(netdev);

	return ret;
}