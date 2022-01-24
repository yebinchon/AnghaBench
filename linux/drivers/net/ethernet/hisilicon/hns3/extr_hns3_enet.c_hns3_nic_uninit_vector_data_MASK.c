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
struct hns3_nic_priv {int vector_num; struct hns3_enet_tqp_vector* tqp_vector; struct hnae3_handle* ae_handle; } ;
struct TYPE_6__ {int /*<<< orphan*/  ring; } ;
struct hns3_enet_tqp_vector {scalar_t__ irq_init_flag; int /*<<< orphan*/  napi; TYPE_3__ tx_group; TYPE_3__ rx_group; int /*<<< orphan*/  vector_irq; } ;
struct hnae3_ring_chain_node {int dummy; } ;
struct hnae3_handle {TYPE_2__* ae_algo; } ;
struct TYPE_5__ {TYPE_1__* ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* unmap_ring_from_vector ) (struct hnae3_handle*,int /*<<< orphan*/ ,struct hnae3_ring_chain_node*) ;} ;

/* Variables and functions */
 scalar_t__ HNS3_VECTOR_INITED ; 
 scalar_t__ HNS3_VECTOR_NOT_INITED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct hns3_enet_tqp_vector*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (struct hns3_enet_tqp_vector*,struct hnae3_ring_chain_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct hns3_enet_tqp_vector*,struct hnae3_ring_chain_node*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct hnae3_handle*,int /*<<< orphan*/ ,struct hnae3_ring_chain_node*) ; 

__attribute__((used)) static void FUNC7(struct hns3_nic_priv *priv)
{
	struct hnae3_ring_chain_node vector_ring_chain;
	struct hnae3_handle *h = priv->ae_handle;
	struct hns3_enet_tqp_vector *tqp_vector;
	int i;

	for (i = 0; i < priv->vector_num; i++) {
		tqp_vector = &priv->tqp_vector[i];

		if (!tqp_vector->rx_group.ring && !tqp_vector->tx_group.ring)
			continue;

		FUNC3(tqp_vector, &vector_ring_chain);

		h->ae_algo->ops->unmap_ring_from_vector(h,
			tqp_vector->vector_irq, &vector_ring_chain);

		FUNC2(tqp_vector, &vector_ring_chain);

		if (tqp_vector->irq_init_flag == HNS3_VECTOR_INITED) {
			FUNC4(tqp_vector->vector_irq, NULL);
			FUNC0(tqp_vector->vector_irq, tqp_vector);
			tqp_vector->irq_init_flag = HNS3_VECTOR_NOT_INITED;
		}

		FUNC1(&tqp_vector->rx_group);
		FUNC1(&tqp_vector->tx_group);
		FUNC5(&priv->tqp_vector[i].napi);
	}
}