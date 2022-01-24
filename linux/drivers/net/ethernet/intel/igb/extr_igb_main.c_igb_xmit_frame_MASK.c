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
struct igb_adapter {int dummy; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC0 (struct igb_adapter*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct igb_adapter* FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int) ; 

__attribute__((used)) static netdev_tx_t FUNC4(struct sk_buff *skb,
				  struct net_device *netdev)
{
	struct igb_adapter *adapter = FUNC2(netdev);

	/* The minimum packet size with TCTL.PSP set is 17 so pad the skb
	 * in order to meet this minimum size requirement.
	 */
	if (FUNC3(skb, 17))
		return NETDEV_TX_OK;

	return FUNC1(skb, FUNC0(adapter, skb));
}