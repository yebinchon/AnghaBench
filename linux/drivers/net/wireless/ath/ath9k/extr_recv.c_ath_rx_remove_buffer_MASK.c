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
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  rxbuf; struct ath_rx_edma* rx_edma; } ;
struct ath_softc {TYPE_1__ rx; } ;
struct ath_rxbuf {int /*<<< orphan*/  list; } ;
struct ath_rx_edma {int /*<<< orphan*/  rx_fifo; } ;
typedef  enum ath9k_rx_qtype { ____Placeholder_ath9k_rx_qtype } ath9k_rx_qtype ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct ath_rxbuf* FUNC1 (struct sk_buff*) ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct ath_softc *sc,
				 enum ath9k_rx_qtype qtype)
{
	struct ath_rxbuf *bf;
	struct ath_rx_edma *rx_edma;
	struct sk_buff *skb;

	rx_edma = &sc->rx.rx_edma[qtype];

	while ((skb = FUNC2(&rx_edma->rx_fifo)) != NULL) {
		bf = FUNC1(skb);
		FUNC0(!bf);
		FUNC3(&bf->list, &sc->rx.rxbuf);
	}
}