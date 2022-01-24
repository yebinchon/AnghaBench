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
struct xgbe_prv_data {int /*<<< orphan*/  dev_state; int /*<<< orphan*/  msg_enable; int /*<<< orphan*/  vxlan_ports; int /*<<< orphan*/  mdio_complete; int /*<<< orphan*/  i2c_complete; int /*<<< orphan*/  i2c_mutex; int /*<<< orphan*/  tstamp_lock; int /*<<< orphan*/  rss_mutex; int /*<<< orphan*/  xpcs_lock; int /*<<< orphan*/  lock; struct device* dev; struct net_device* netdev; } ;
struct net_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct xgbe_prv_data* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,struct device*) ; 
 int /*<<< orphan*/  XGBE_DOWN ; 
 int /*<<< orphan*/  XGBE_MAX_DMA_CHANNELS ; 
 int /*<<< orphan*/  XGBE_STOPPED ; 
 struct net_device* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  default_msg_level ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct xgbe_prv_data* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

struct xgbe_prv_data *FUNC11(struct device *dev)
{
	struct xgbe_prv_data *pdata;
	struct net_device *netdev;

	netdev = FUNC3(sizeof(struct xgbe_prv_data),
				   XGBE_MAX_DMA_CHANNELS);
	if (!netdev) {
		FUNC4(dev, "alloc_etherdev_mq failed\n");
		return FUNC0(-ENOMEM);
	}
	FUNC2(netdev, dev);
	pdata = FUNC7(netdev);
	pdata->netdev = netdev;
	pdata->dev = dev;

	FUNC10(&pdata->lock);
	FUNC10(&pdata->xpcs_lock);
	FUNC6(&pdata->rss_mutex);
	FUNC10(&pdata->tstamp_lock);
	FUNC6(&pdata->i2c_mutex);
	FUNC5(&pdata->i2c_complete);
	FUNC5(&pdata->mdio_complete);
	FUNC1(&pdata->vxlan_ports);

	pdata->msg_enable = FUNC8(debug, default_msg_level);

	FUNC9(XGBE_DOWN, &pdata->dev_state);
	FUNC9(XGBE_STOPPED, &pdata->dev_state);

	return pdata;
}