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
struct hns3_nic_priv {unsigned int vector_num; struct hns3_enet_tqp_vector* tqp_vector; } ;
struct hns3_enet_tqp_vector {scalar_t__ irq_init_flag; int /*<<< orphan*/  vector_irq; } ;

/* Variables and functions */
 scalar_t__ HNS3_VECTOR_INITED ; 
 scalar_t__ HNS3_VECTOR_NOT_INITED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct hns3_enet_tqp_vector*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct hns3_nic_priv *priv)
{
	struct hns3_enet_tqp_vector *tqp_vectors;
	unsigned int i;

	for (i = 0; i < priv->vector_num; i++) {
		tqp_vectors = &priv->tqp_vector[i];

		if (tqp_vectors->irq_init_flag != HNS3_VECTOR_INITED)
			continue;

		/* clear the affinity mask */
		FUNC1(tqp_vectors->vector_irq, NULL);

		/* release the irq resource */
		FUNC0(tqp_vectors->vector_irq, tqp_vectors);
		tqp_vectors->irq_init_flag = HNS3_VECTOR_NOT_INITED;
	}
}