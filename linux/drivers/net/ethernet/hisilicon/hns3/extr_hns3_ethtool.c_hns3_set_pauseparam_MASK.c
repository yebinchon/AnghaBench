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
struct net_device {int dummy; } ;
struct hnae3_handle {TYPE_2__* ae_algo; } ;
struct ethtool_pauseparam {int /*<<< orphan*/  tx_pause; int /*<<< orphan*/  rx_pause; int /*<<< orphan*/  autoneg; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* set_pauseparam ) (struct hnae3_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  drv ; 
 struct hnae3_handle* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct hnae3_handle*,int /*<<< orphan*/ ,struct net_device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct hnae3_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct net_device *netdev,
			       struct ethtool_pauseparam *param)
{
	struct hnae3_handle *h = FUNC0(netdev);

	FUNC1(h, drv, netdev,
		  "set pauseparam: autoneg=%u, rx:%u, tx:%u\n",
		  param->autoneg, param->rx_pause, param->tx_pause);

	if (h->ae_algo->ops->set_pauseparam)
		return h->ae_algo->ops->set_pauseparam(h, param->autoneg,
						       param->rx_pause,
						       param->tx_pause);
	return -EOPNOTSUPP;
}