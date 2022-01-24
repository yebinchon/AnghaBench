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
typedef  int u32 ;
struct sk_buff {int /*<<< orphan*/  data; } ;
struct TYPE_4__ {int /*<<< orphan*/  rxbuf; int /*<<< orphan*/ * rx_edma; } ;
struct ath_softc {TYPE_2__ rx; int /*<<< orphan*/  dev; struct ath_hw* sc_ah; } ;
struct ath_rxbuf {int /*<<< orphan*/  list; scalar_t__ bf_buf_addr; struct sk_buff* bf_mpdu; } ;
struct TYPE_3__ {int /*<<< orphan*/  rx_hp_qdepth; int /*<<< orphan*/  rx_lp_qdepth; scalar_t__ rx_status_len; } ;
struct ath_hw {TYPE_1__ caps; } ;
struct ath_common {scalar_t__ rx_bufsize; } ;

/* Variables and functions */
 size_t ATH9K_RX_QUEUE_HP ; 
 size_t ATH9K_RX_QUEUE_LP ; 
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct ath_common* FUNC1 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_common*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC6 (struct ath_common*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 struct ath_rxbuf* FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct ath_softc *sc, int nbufs)
{
	struct ath_common *common = FUNC1(sc->sc_ah);
	struct ath_hw *ah = sc->sc_ah;
	struct sk_buff *skb;
	struct ath_rxbuf *bf;
	int error = 0, i;
	u32 size;

	FUNC2(ah, common->rx_bufsize -
				    ah->caps.rx_status_len);

	FUNC5(&sc->rx.rx_edma[ATH9K_RX_QUEUE_LP],
			       ah->caps.rx_lp_qdepth);
	FUNC5(&sc->rx.rx_edma[ATH9K_RX_QUEUE_HP],
			       ah->caps.rx_hp_qdepth);

	size = sizeof(struct ath_rxbuf) * nbufs;
	bf = FUNC8(sc->dev, size, GFP_KERNEL);
	if (!bf)
		return -ENOMEM;

	FUNC0(&sc->rx.rxbuf);

	for (i = 0; i < nbufs; i++, bf++) {
		skb = FUNC6(common, common->rx_bufsize, GFP_KERNEL);
		if (!skb) {
			error = -ENOMEM;
			goto rx_init_fail;
		}

		FUNC12(skb->data, 0, common->rx_bufsize);
		bf->bf_mpdu = skb;

		bf->bf_buf_addr = FUNC9(sc->dev, skb->data,
						 common->rx_bufsize,
						 DMA_BIDIRECTIONAL);
		if (FUNC13(FUNC10(sc->dev,
						bf->bf_buf_addr))) {
				FUNC7(skb);
				bf->bf_mpdu = NULL;
				bf->bf_buf_addr = 0;
				FUNC3(common,
					"dma_mapping_error() on RX init\n");
				error = -ENOMEM;
				goto rx_init_fail;
		}

		FUNC11(&bf->list, &sc->rx.rxbuf);
	}

	return 0;

rx_init_fail:
	FUNC4(sc);
	return error;
}