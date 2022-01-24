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
struct net_device {int dummy; } ;
struct hns_nic_priv {struct hnae_handle* ae_handle; } ;
struct hnae_handle {TYPE_1__* dev; } ;
struct hnae_ae_ops {int (* set_pauseparam ) (struct hnae_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct ethtool_pauseparam {int /*<<< orphan*/  tx_pause; int /*<<< orphan*/  rx_pause; int /*<<< orphan*/  autoneg; } ;
struct TYPE_2__ {struct hnae_ae_ops* ops; } ;

/* Variables and functions */
 int ESRCH ; 
 struct hns_nic_priv* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct hnae_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct net_device *net_dev,
			      struct ethtool_pauseparam *param)
{
	struct hns_nic_priv *priv = FUNC0(net_dev);
	struct hnae_handle *h;
	struct hnae_ae_ops *ops;

	h = priv->ae_handle;
	ops = h->dev->ops;

	if (!ops->set_pauseparam)
		return -ESRCH;

	return ops->set_pauseparam(priv->ae_handle, param->autoneg,
				   param->rx_pause, param->tx_pause);
}