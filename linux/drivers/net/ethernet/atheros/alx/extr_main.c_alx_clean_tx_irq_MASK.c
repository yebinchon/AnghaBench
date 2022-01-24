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
typedef  size_t u16 ;
struct sk_buff {scalar_t__ len; } ;
struct netdev_queue {int dummy; } ;
struct alx_tx_queue {size_t read_idx; size_t count; TYPE_1__* bufs; int /*<<< orphan*/  c_reg; int /*<<< orphan*/  netdev; } ;
struct alx_priv {int /*<<< orphan*/  dev; int /*<<< orphan*/  hw; } ;
struct TYPE_2__ {struct sk_buff* skb; } ;

/* Variables and functions */
 int ALX_DEFAULT_TX_WORK ; 
 int /*<<< orphan*/  FUNC0 (struct alx_tx_queue*,size_t) ; 
 struct netdev_queue* FUNC1 (struct alx_tx_queue*) ; 
 size_t FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct alx_tx_queue*) ; 
 struct alx_priv* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct netdev_queue*,unsigned int,unsigned int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC8 (struct netdev_queue*) ; 

__attribute__((used)) static bool FUNC9(struct alx_tx_queue *txq)
{
	struct alx_priv *alx;
	struct netdev_queue *tx_queue;
	u16 hw_read_idx, sw_read_idx;
	unsigned int total_bytes = 0, total_packets = 0;
	int budget = ALX_DEFAULT_TX_WORK;

	alx = FUNC4(txq->netdev);
	tx_queue = FUNC1(txq);

	sw_read_idx = txq->read_idx;
	hw_read_idx = FUNC2(&alx->hw, txq->c_reg);

	if (sw_read_idx != hw_read_idx) {
		while (sw_read_idx != hw_read_idx && budget > 0) {
			struct sk_buff *skb;

			skb = txq->bufs[sw_read_idx].skb;
			if (skb) {
				total_bytes += skb->len;
				total_packets++;
				budget--;
			}

			FUNC0(txq, sw_read_idx);

			if (++sw_read_idx == txq->count)
				sw_read_idx = 0;
		}
		txq->read_idx = sw_read_idx;

		FUNC5(tx_queue, total_packets, total_bytes);
	}

	if (FUNC7(tx_queue) && FUNC6(alx->dev) &&
	    FUNC3(txq) > txq->count / 4)
		FUNC8(tx_queue);

	return sw_read_idx == hw_read_idx;
}