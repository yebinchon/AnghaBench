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
struct sky2_port {unsigned int rx_pending; int /*<<< orphan*/  rx_data_size; struct rx_ring_info* rx_ring; struct sky2_hw* hw; } ;
struct sky2_hw {int /*<<< orphan*/  pdev; } ;
struct rx_ring_info {int /*<<< orphan*/ * skb; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sky2_port*) ; 
 int /*<<< orphan*/ * FUNC2 (struct sky2_port*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct rx_ring_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct sky2_port *sky2)
{
	struct sky2_hw *hw = sky2->hw;
	unsigned i;

	sky2->rx_data_size = FUNC1(sky2);

	/* Fill Rx ring */
	for (i = 0; i < sky2->rx_pending; i++) {
		struct rx_ring_info *re = sky2->rx_ring + i;

		re->skb = FUNC2(sky2, GFP_KERNEL);
		if (!re->skb)
			return -ENOMEM;

		if (FUNC3(hw->pdev, re, sky2->rx_data_size)) {
			FUNC0(re->skb);
			re->skb = NULL;
			return -ENOMEM;
		}
	}
	return 0;
}