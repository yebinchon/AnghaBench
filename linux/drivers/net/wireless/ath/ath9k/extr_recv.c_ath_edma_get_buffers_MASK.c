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
struct sk_buff {int /*<<< orphan*/  data; } ;
struct TYPE_2__ {int /*<<< orphan*/  rxbuf; struct ath_rx_edma* rx_edma; } ;
struct ath_softc {TYPE_1__ rx; int /*<<< orphan*/  dev; struct ath_hw* sc_ah; } ;
struct ath_rxbuf {int /*<<< orphan*/  list; int /*<<< orphan*/  bf_buf_addr; } ;
struct ath_rx_status {int dummy; } ;
struct ath_rx_edma {int /*<<< orphan*/  rx_fifo; } ;
struct ath_hw {int dummy; } ;
struct ath_common {int /*<<< orphan*/  rx_bufsize; } ;
typedef  enum ath9k_rx_qtype { ____Placeholder_ath9k_rx_qtype } ath9k_rx_qtype ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int EINPROGRESS ; 
 int EINVAL ; 
 struct ath_rxbuf* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 struct ath_common* FUNC3 (struct ath_hw*) ; 
 int FUNC4 (struct ath_hw*,struct ath_rx_status*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_softc*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC10(struct ath_softc *sc,
				 enum ath9k_rx_qtype qtype,
				 struct ath_rx_status *rs,
				 struct ath_rxbuf **dest)
{
	struct ath_rx_edma *rx_edma = &sc->rx.rx_edma[qtype];
	struct ath_hw *ah = sc->sc_ah;
	struct ath_common *common = FUNC3(ah);
	struct sk_buff *skb;
	struct ath_rxbuf *bf;
	int ret;

	skb = FUNC9(&rx_edma->rx_fifo);
	if (!skb)
		return false;

	bf = FUNC1(skb);
	FUNC0(!bf);

	FUNC6(sc->dev, bf->bf_buf_addr,
				common->rx_bufsize, DMA_FROM_DEVICE);

	ret = FUNC4(ah, rs, skb->data);
	if (ret == -EINPROGRESS) {
		/*let device gain the buffer again*/
		FUNC7(sc->dev, bf->bf_buf_addr,
				common->rx_bufsize, DMA_FROM_DEVICE);
		return false;
	}

	FUNC2(skb, &rx_edma->rx_fifo);
	if (ret == -EINVAL) {
		/* corrupt descriptor, skip this one and the following one */
		FUNC8(&bf->list, &sc->rx.rxbuf);
		FUNC5(sc, qtype);

		skb = FUNC9(&rx_edma->rx_fifo);
		if (skb) {
			bf = FUNC1(skb);
			FUNC0(!bf);

			FUNC2(skb, &rx_edma->rx_fifo);
			FUNC8(&bf->list, &sc->rx.rxbuf);
			FUNC5(sc, qtype);
		}

		bf = NULL;
	}

	*dest = bf;
	return true;
}