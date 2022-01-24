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
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct lan743x_adapter {int /*<<< orphan*/ * tx; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 struct lan743x_adapter* FUNC1 (struct net_device*) ; 

__attribute__((used)) static netdev_tx_t FUNC2(struct sk_buff *skb,
					     struct net_device *netdev)
{
	struct lan743x_adapter *adapter = FUNC1(netdev);

	return FUNC0(&adapter->tx[0], skb);
}