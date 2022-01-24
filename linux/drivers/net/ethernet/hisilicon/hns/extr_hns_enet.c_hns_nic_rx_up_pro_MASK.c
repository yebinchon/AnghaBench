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
struct sk_buff {int /*<<< orphan*/  protocol; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {struct net_device* dev; } ;
struct hns_nic_ring_data {TYPE_1__ napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct sk_buff*) ; 

__attribute__((used)) static void FUNC2(struct hns_nic_ring_data *ring_data,
			      struct sk_buff *skb)
{
	struct net_device *ndev = ring_data->napi.dev;

	skb->protocol = FUNC0(skb, ndev);
	(void)FUNC1(&ring_data->napi, skb);
}