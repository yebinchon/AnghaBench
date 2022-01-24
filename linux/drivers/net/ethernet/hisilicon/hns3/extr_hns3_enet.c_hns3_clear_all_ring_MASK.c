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
struct net_device {int dummy; } ;
struct hns3_nic_priv {TYPE_1__* ring_data; } ;
struct hns3_enet_ring {int dummy; } ;
struct TYPE_4__ {size_t num_tqps; struct net_device* netdev; } ;
struct hnae3_handle {TYPE_2__ kinfo; } ;
struct TYPE_3__ {struct hns3_enet_ring* ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hns3_enet_ring*) ; 
 int /*<<< orphan*/  FUNC1 (struct hns3_enet_ring*) ; 
 int /*<<< orphan*/  FUNC2 (struct hns3_enet_ring*) ; 
 struct hns3_nic_priv* FUNC3 (struct net_device*) ; 

__attribute__((used)) static void FUNC4(struct hnae3_handle *h, bool force)
{
	struct net_device *ndev = h->kinfo.netdev;
	struct hns3_nic_priv *priv = FUNC3(ndev);
	u32 i;

	for (i = 0; i < h->kinfo.num_tqps; i++) {
		struct hns3_enet_ring *ring;

		ring = priv->ring_data[i].ring;
		FUNC1(ring);

		ring = priv->ring_data[i + h->kinfo.num_tqps].ring;
		/* Continue to clear other rings even if clearing some
		 * rings failed.
		 */
		if (force)
			FUNC2(ring);
		else
			FUNC0(ring);
	}
}