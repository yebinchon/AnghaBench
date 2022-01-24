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
struct TYPE_2__ {int /*<<< orphan*/  int_gl; scalar_t__ gl_adapt_enable; } ;
struct hns3_enet_ring_group {TYPE_1__ coal; } ;
struct hns3_enet_tqp_vector {scalar_t__ last_jiffies; struct hns3_enet_ring_group tx_group; struct hns3_enet_ring_group rx_group; } ;

/* Variables and functions */
 int FUNC0 (struct hns3_enet_ring_group*) ; 
 int /*<<< orphan*/  FUNC1 (struct hns3_enet_tqp_vector*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hns3_enet_tqp_vector*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct hns3_enet_tqp_vector *tqp_vector)
{
	struct hns3_enet_ring_group *rx_group = &tqp_vector->rx_group;
	struct hns3_enet_ring_group *tx_group = &tqp_vector->tx_group;
	bool rx_update, tx_update;

	/* update param every 1000ms */
	if (FUNC4(jiffies,
			tqp_vector->last_jiffies + FUNC3(1000)))
		return;

	if (rx_group->coal.gl_adapt_enable) {
		rx_update = FUNC0(rx_group);
		if (rx_update)
			FUNC1(tqp_vector,
						       rx_group->coal.int_gl);
	}

	if (tx_group->coal.gl_adapt_enable) {
		tx_update = FUNC0(tx_group);
		if (tx_update)
			FUNC2(tqp_vector,
						       tx_group->coal.int_gl);
	}

	tqp_vector->last_jiffies = jiffies;
}