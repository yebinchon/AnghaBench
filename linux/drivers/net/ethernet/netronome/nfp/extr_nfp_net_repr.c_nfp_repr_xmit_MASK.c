#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {unsigned int len; int /*<<< orphan*/  dev; } ;
struct nfp_repr {TYPE_2__* dst; } ;
struct net_device {int dummy; } ;
struct dst_entry {int dummy; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
struct TYPE_6__ {int /*<<< orphan*/  lower_dev; } ;
struct TYPE_4__ {TYPE_3__ port_info; } ;
struct TYPE_5__ {TYPE_1__ u; } ;

/* Variables and functions */
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct dst_entry*) ; 
 struct nfp_repr* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct dst_entry*) ; 

__attribute__((used)) static netdev_tx_t FUNC6(struct sk_buff *skb, struct net_device *netdev)
{
	struct nfp_repr *repr = FUNC2(netdev);
	unsigned int len = skb->len;
	int ret;

	FUNC4(skb);
	FUNC1((struct dst_entry *)repr->dst);
	FUNC5(skb, (struct dst_entry *)repr->dst);
	skb->dev = repr->dst->u.port_info.lower_dev;

	ret = FUNC0(skb);
	FUNC3(netdev, len, ret);

	return NETDEV_TX_OK;
}