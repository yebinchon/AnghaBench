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
typedef  size_t u32 ;
struct netdev_queue {int dummy; } ;
struct net_device {int dummy; } ;
struct hns3_nic_priv {TYPE_2__* ring_data; } ;
struct TYPE_3__ {size_t num_tqps; struct net_device* netdev; } ;
struct hnae3_handle {TYPE_1__ kinfo; } ;
struct TYPE_4__ {int /*<<< orphan*/  queue_index; } ;

/* Variables and functions */
 struct netdev_queue* FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 struct hns3_nic_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct netdev_queue*) ; 

__attribute__((used)) static void FUNC3(struct hnae3_handle *h)
{
	struct net_device *ndev = h->kinfo.netdev;
	struct hns3_nic_priv *priv = FUNC1(ndev);
	struct netdev_queue *dev_queue;
	u32 i;

	for (i = 0; i < h->kinfo.num_tqps; i++) {
		dev_queue = FUNC0(ndev,
						priv->ring_data[i].queue_index);
		FUNC2(dev_queue);
	}
}