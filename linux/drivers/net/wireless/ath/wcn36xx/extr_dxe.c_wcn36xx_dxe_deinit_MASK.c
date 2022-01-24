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
struct wcn36xx {int /*<<< orphan*/  dxe_rx_h_ch; int /*<<< orphan*/  dxe_rx_l_ch; int /*<<< orphan*/ * tx_ack_skb; int /*<<< orphan*/  hw; int /*<<< orphan*/  rx_irq; int /*<<< orphan*/  tx_irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct wcn36xx*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct wcn36xx*,int /*<<< orphan*/ *) ; 

void FUNC3(struct wcn36xx *wcn)
{
	FUNC0(wcn->tx_irq, wcn);
	FUNC0(wcn->rx_irq, wcn);

	if (wcn->tx_ack_skb) {
		FUNC1(wcn->hw, wcn->tx_ack_skb);
		wcn->tx_ack_skb = NULL;
	}

	FUNC2(wcn, &wcn->dxe_rx_l_ch);
	FUNC2(wcn, &wcn->dxe_rx_h_ch);
}