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
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct mvneta_tx_queue {size_t txq_put_index; struct sk_buff** tx_skb; } ;
struct mvneta_tx_desc {int data_size; scalar_t__ command; int /*<<< orphan*/  buf_phys_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int ENOMEM ; 
 scalar_t__ MVNETA_TXD_L_DESC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mvneta_tx_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct mvneta_tx_queue*) ; 
 struct mvneta_tx_desc* FUNC4 (struct mvneta_tx_queue*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int
FUNC6(struct net_device *dev, struct mvneta_tx_queue *txq,
		    struct sk_buff *skb, char *data, int size,
		    bool last_tcp, bool is_last)
{
	struct mvneta_tx_desc *tx_desc;

	tx_desc = FUNC4(txq);
	tx_desc->data_size = size;
	tx_desc->buf_phys_addr = FUNC0(dev->dev.parent, data,
						size, DMA_TO_DEVICE);
	if (FUNC5(FUNC1(dev->dev.parent,
		     tx_desc->buf_phys_addr))) {
		FUNC2(txq);
		return -ENOMEM;
	}

	tx_desc->command = 0;
	txq->tx_skb[txq->txq_put_index] = NULL;

	if (last_tcp) {
		/* last descriptor in the TCP packet */
		tx_desc->command = MVNETA_TXD_L_DESC;

		/* last descriptor in SKB */
		if (is_last)
			txq->tx_skb[txq->txq_put_index] = skb;
	}
	FUNC3(txq);
	return 0;
}