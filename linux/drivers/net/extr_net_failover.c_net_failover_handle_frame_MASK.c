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
struct sk_buff {struct net_device* dev; } ;
struct net_failover_info {int /*<<< orphan*/  standby_dev; int /*<<< orphan*/  primary_dev; } ;
struct net_device {int /*<<< orphan*/  rx_handler_data; } ;
typedef  int /*<<< orphan*/  rx_handler_result_t ;

/* Variables and functions */
 int /*<<< orphan*/  RX_HANDLER_ANOTHER ; 
 int /*<<< orphan*/  RX_HANDLER_EXACT ; 
 struct net_failover_info* FUNC0 (struct net_device*) ; 
 struct net_device* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static rx_handler_result_t FUNC2(struct sk_buff **pskb)
{
	struct sk_buff *skb = *pskb;
	struct net_device *dev = FUNC1(skb->dev->rx_handler_data);
	struct net_failover_info *nfo_info = FUNC0(dev);
	struct net_device *primary_dev, *standby_dev;

	primary_dev = FUNC1(nfo_info->primary_dev);
	standby_dev = FUNC1(nfo_info->standby_dev);

	if (primary_dev && skb->dev == standby_dev)
		return RX_HANDLER_EXACT;

	skb->dev = dev;

	return RX_HANDLER_ANOTHER;
}