#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u16 ;
struct hns3_nic_priv {int vector_num; struct hns3_enet_tqp_vector* tqp_vector; int /*<<< orphan*/  netdev; TYPE_2__* ring_data; struct hnae3_handle* ae_handle; } ;
struct TYPE_11__ {scalar_t__ total_packets; scalar_t__ total_bytes; } ;
struct hns3_enet_tqp_vector {int /*<<< orphan*/  napi; int /*<<< orphan*/  vector_irq; struct hnae3_handle* handle; TYPE_5__ tx_group; TYPE_5__ rx_group; scalar_t__ num_tqps; } ;
struct hnae3_ring_chain_node {int dummy; } ;
struct TYPE_7__ {int num_tqps; } ;
struct hnae3_handle {TYPE_4__* ae_algo; TYPE_1__ kinfo; } ;
struct TYPE_12__ {struct hns3_enet_tqp_vector* tqp_vector; } ;
struct TYPE_10__ {TYPE_3__* ops; } ;
struct TYPE_9__ {int (* map_ring_to_vector ) (struct hnae3_handle*,int /*<<< orphan*/ ,struct hnae3_ring_chain_node*) ;} ;
struct TYPE_8__ {TYPE_6__* ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  NAPI_POLL_WEIGHT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC1 (struct hns3_enet_tqp_vector*,struct hnae3_ring_chain_node*) ; 
 int FUNC2 (struct hns3_enet_tqp_vector*,struct hnae3_ring_chain_node*) ; 
 int /*<<< orphan*/  hns3_nic_common_poll ; 
 int /*<<< orphan*/  FUNC3 (struct hns3_nic_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct hns3_enet_tqp_vector*,struct hns3_nic_priv*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct hnae3_handle*,int /*<<< orphan*/ ,struct hnae3_ring_chain_node*) ; 

__attribute__((used)) static int FUNC8(struct hns3_nic_priv *priv)
{
	struct hnae3_ring_chain_node vector_ring_chain;
	struct hnae3_handle *h = priv->ae_handle;
	struct hns3_enet_tqp_vector *tqp_vector;
	int ret = 0;
	int i;

	FUNC3(priv);

	for (i = 0; i < priv->vector_num; i++) {
		tqp_vector = &priv->tqp_vector[i];
		FUNC4(tqp_vector, priv);
		tqp_vector->num_tqps = 0;
	}

	for (i = 0; i < h->kinfo.num_tqps; i++) {
		u16 vector_i = i % priv->vector_num;
		u16 tqp_num = h->kinfo.num_tqps;

		tqp_vector = &priv->tqp_vector[vector_i];

		FUNC0(&tqp_vector->tx_group,
				       priv->ring_data[i].ring);

		FUNC0(&tqp_vector->rx_group,
				       priv->ring_data[i + tqp_num].ring);

		priv->ring_data[i].ring->tqp_vector = tqp_vector;
		priv->ring_data[i + tqp_num].ring->tqp_vector = tqp_vector;
		tqp_vector->num_tqps++;
	}

	for (i = 0; i < priv->vector_num; i++) {
		tqp_vector = &priv->tqp_vector[i];

		tqp_vector->rx_group.total_bytes = 0;
		tqp_vector->rx_group.total_packets = 0;
		tqp_vector->tx_group.total_bytes = 0;
		tqp_vector->tx_group.total_packets = 0;
		tqp_vector->handle = h;

		ret = FUNC2(tqp_vector,
						 &vector_ring_chain);
		if (ret)
			goto map_ring_fail;

		ret = h->ae_algo->ops->map_ring_to_vector(h,
			tqp_vector->vector_irq, &vector_ring_chain);

		FUNC1(tqp_vector, &vector_ring_chain);

		if (ret)
			goto map_ring_fail;

		FUNC5(priv->netdev, &tqp_vector->napi,
			       hns3_nic_common_poll, NAPI_POLL_WEIGHT);
	}

	return 0;

map_ring_fail:
	while (i--)
		FUNC6(&priv->tqp_vector[i].napi);

	return ret;
}