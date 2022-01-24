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
struct hns_nic_priv {TYPE_2__* ring_data; } ;
struct TYPE_4__ {TYPE_1__* ring; } ;
struct TYPE_3__ {scalar_t__ irq_init_flag; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 scalar_t__ RCB_IRQ_INITED ; 
 scalar_t__ RCB_IRQ_NOT_INITED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(int q_num, struct hns_nic_priv *priv)
{
	int i;

	for (i = 0; i < q_num * 2; i++) {
		if (priv->ring_data[i].ring->irq_init_flag == RCB_IRQ_INITED) {
			FUNC1(priv->ring_data[i].ring->irq,
					      NULL);
			FUNC0(priv->ring_data[i].ring->irq,
				 &priv->ring_data[i]);
			priv->ring_data[i].ring->irq_init_flag =
				RCB_IRQ_NOT_INITED;
		}
	}
}