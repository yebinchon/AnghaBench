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
struct asix_rx_fixup_info {int /*<<< orphan*/ * ax_skb; } ;
struct asix_common_private {struct asix_rx_fixup_info rx_fixup_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(struct asix_common_private *dp)
{
	struct asix_rx_fixup_info *rx;

	if (!dp)
		return;

	rx = &dp->rx_fixup_info;

	if (rx->ax_skb) {
		FUNC0(rx->ax_skb);
		rx->ax_skb = NULL;
	}
}