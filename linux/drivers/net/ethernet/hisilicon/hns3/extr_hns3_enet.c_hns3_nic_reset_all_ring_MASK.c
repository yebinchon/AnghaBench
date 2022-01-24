#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct hns3_nic_priv {TYPE_3__* ring_data; } ;
struct hns3_enet_ring {int desc_num; scalar_t__ next_to_use; scalar_t__ next_to_clean; } ;
struct TYPE_8__ {int num_tqps; struct net_device* netdev; } ;
struct hnae3_handle {TYPE_4__ kinfo; TYPE_2__* ae_algo; } ;
struct TYPE_7__ {struct hns3_enet_ring* ring; } ;
struct TYPE_6__ {TYPE_1__* ops; } ;
struct TYPE_5__ {int (* reset_queue ) (struct hnae3_handle*,int) ;} ;

/* Variables and functions */
 int FUNC0 (struct hns3_enet_ring*) ; 
 int /*<<< orphan*/  FUNC1 (struct hns3_enet_ring*) ; 
 int /*<<< orphan*/  FUNC2 (struct hns3_enet_ring*) ; 
 int /*<<< orphan*/  FUNC3 (struct hns3_nic_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct hns3_enet_ring*,int) ; 
 struct hns3_nic_priv* FUNC5 (struct net_device*) ; 
 int FUNC6 (struct hnae3_handle*,int) ; 

int FUNC7(struct hnae3_handle *h)
{
	struct net_device *ndev = h->kinfo.netdev;
	struct hns3_nic_priv *priv = FUNC5(ndev);
	struct hns3_enet_ring *rx_ring;
	int i, j;
	int ret;

	for (i = 0; i < h->kinfo.num_tqps; i++) {
		ret = h->ae_algo->ops->reset_queue(h, i);
		if (ret)
			return ret;

		FUNC2(priv->ring_data[i].ring);

		/* We need to clear tx ring here because self test will
		 * use the ring and will not run down before up
		 */
		FUNC1(priv->ring_data[i].ring);
		priv->ring_data[i].ring->next_to_clean = 0;
		priv->ring_data[i].ring->next_to_use = 0;

		rx_ring = priv->ring_data[i + h->kinfo.num_tqps].ring;
		FUNC2(rx_ring);
		ret = FUNC0(rx_ring);
		if (ret)
			return ret;

		/* We can not know the hardware head and tail when this
		 * function is called in reset flow, so we reuse all desc.
		 */
		for (j = 0; j < rx_ring->desc_num; j++)
			FUNC4(rx_ring, j);

		rx_ring->next_to_clean = 0;
		rx_ring->next_to_use = 0;
	}

	FUNC3(priv);

	return 0;
}