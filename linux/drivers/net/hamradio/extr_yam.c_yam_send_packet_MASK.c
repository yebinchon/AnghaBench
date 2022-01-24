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
struct yam_port {int /*<<< orphan*/  send_queue; } ;
struct sk_buff {scalar_t__ protocol; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct yam_port* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct sk_buff*) ; 

__attribute__((used)) static netdev_tx_t FUNC5(struct sk_buff *skb,
					 struct net_device *dev)
{
	struct yam_port *yp = FUNC2(dev);

	if (skb->protocol == FUNC1(ETH_P_IP))
		return FUNC0(skb);

	FUNC4(&yp->send_queue, skb);
	FUNC3(dev);
	return NETDEV_TX_OK;
}