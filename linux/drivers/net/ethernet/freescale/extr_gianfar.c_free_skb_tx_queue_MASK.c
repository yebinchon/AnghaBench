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
struct txbd8 {int /*<<< orphan*/  length; int /*<<< orphan*/  bufPtr; scalar_t__ lstatus; } ;
struct gfar_private {int /*<<< orphan*/  dev; } ;
struct gfar_priv_tx_q {int tx_ring_size; int /*<<< orphan*/ ** tx_skbuff; struct txbd8* tx_bd_base; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int nr_frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **) ; 
 struct gfar_private* FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct gfar_priv_tx_q *tx_queue)
{
	struct txbd8 *txbdp;
	struct gfar_private *priv = FUNC6(tx_queue->dev);
	int i, j;

	txbdp = tx_queue->tx_bd_base;

	for (i = 0; i < tx_queue->tx_ring_size; i++) {
		if (!tx_queue->tx_skbuff[i])
			continue;

		FUNC4(priv->dev, FUNC1(txbdp->bufPtr),
				 FUNC0(txbdp->length), DMA_TO_DEVICE);
		txbdp->lstatus = 0;
		for (j = 0; j < FUNC7(tx_queue->tx_skbuff[i])->nr_frags;
		     j++) {
			txbdp++;
			FUNC3(priv->dev, FUNC1(txbdp->bufPtr),
				       FUNC0(txbdp->length),
				       DMA_TO_DEVICE);
		}
		txbdp++;
		FUNC2(tx_queue->tx_skbuff[i]);
		tx_queue->tx_skbuff[i] = NULL;
	}
	FUNC5(tx_queue->tx_skbuff);
	tx_queue->tx_skbuff = NULL;
}