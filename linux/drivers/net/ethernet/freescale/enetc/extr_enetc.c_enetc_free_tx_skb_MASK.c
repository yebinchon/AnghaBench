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
struct enetc_tx_swbd {int /*<<< orphan*/ * skb; scalar_t__ dma; } ;
struct enetc_bdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct enetc_bdr*,struct enetc_tx_swbd*) ; 

__attribute__((used)) static void FUNC2(struct enetc_bdr *tx_ring,
			      struct enetc_tx_swbd *tx_swbd)
{
	if (tx_swbd->dma)
		FUNC1(tx_ring, tx_swbd);

	if (tx_swbd->skb) {
		FUNC0(tx_swbd->skb);
		tx_swbd->skb = NULL;
	}
}