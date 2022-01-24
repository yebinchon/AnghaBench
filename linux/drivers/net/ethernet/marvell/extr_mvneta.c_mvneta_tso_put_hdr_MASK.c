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
struct sk_buff {int dummy; } ;
struct mvneta_tx_queue {size_t txq_put_index; scalar_t__ tso_hdrs_phys; int /*<<< orphan*/ ** tx_skb; } ;
struct mvneta_tx_desc {int data_size; scalar_t__ buf_phys_addr; int /*<<< orphan*/  command; } ;
struct mvneta_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MVNETA_TXD_F_DESC ; 
 int TSO_HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct mvneta_port*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct mvneta_tx_queue*) ; 
 struct mvneta_tx_desc* FUNC2 (struct mvneta_tx_queue*) ; 
 int FUNC3 (struct sk_buff*) ; 
 int FUNC4 (struct sk_buff*) ; 

__attribute__((used)) static inline void
FUNC5(struct sk_buff *skb,
		   struct mvneta_port *pp, struct mvneta_tx_queue *txq)
{
	struct mvneta_tx_desc *tx_desc;
	int hdr_len = FUNC3(skb) + FUNC4(skb);

	txq->tx_skb[txq->txq_put_index] = NULL;
	tx_desc = FUNC2(txq);
	tx_desc->data_size = hdr_len;
	tx_desc->command = FUNC0(pp, skb);
	tx_desc->command |= MVNETA_TXD_F_DESC;
	tx_desc->buf_phys_addr = txq->tso_hdrs_phys +
				 txq->txq_put_index * TSO_HEADER_SIZE;
	FUNC1(txq);
}