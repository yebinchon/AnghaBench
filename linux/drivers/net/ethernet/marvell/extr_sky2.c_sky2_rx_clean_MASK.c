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
struct sky2_port {unsigned int rx_pending; TYPE_1__* hw; struct rx_ring_info* rx_ring; scalar_t__ rx_le; } ;
struct rx_ring_info {int /*<<< orphan*/ * skb; } ;
struct TYPE_2__ {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  RX_LE_BYTES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct rx_ring_info*) ; 

__attribute__((used)) static void FUNC3(struct sky2_port *sky2)
{
	unsigned i;

	if (sky2->rx_le)
		FUNC1(sky2->rx_le, 0, RX_LE_BYTES);

	for (i = 0; i < sky2->rx_pending; i++) {
		struct rx_ring_info *re = sky2->rx_ring + i;

		if (re->skb) {
			FUNC2(sky2->hw->pdev, re);
			FUNC0(re->skb);
			re->skb = NULL;
		}
	}
}