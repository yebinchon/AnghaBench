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
struct mvpp2_txq_pcpu_buf {scalar_t__ dma; int /*<<< orphan*/  size; struct sk_buff* skb; } ;
struct mvpp2_txq_pcpu {int txq_put_index; scalar_t__ size; struct mvpp2_txq_pcpu_buf* buffs; } ;
struct mvpp2_tx_desc {int dummy; } ;
struct mvpp2_port {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mvpp2_port*,struct mvpp2_tx_desc*) ; 
 scalar_t__ FUNC1 (struct mvpp2_port*,struct mvpp2_tx_desc*) ; 
 int /*<<< orphan*/  FUNC2 (struct mvpp2_port*,struct mvpp2_tx_desc*) ; 

__attribute__((used)) static void FUNC3(struct mvpp2_port *port,
			      struct mvpp2_txq_pcpu *txq_pcpu,
			      struct sk_buff *skb,
			      struct mvpp2_tx_desc *tx_desc)
{
	struct mvpp2_txq_pcpu_buf *tx_buf =
		txq_pcpu->buffs + txq_pcpu->txq_put_index;
	tx_buf->skb = skb;
	tx_buf->size = FUNC2(port, tx_desc);
	tx_buf->dma = FUNC0(port, tx_desc) +
		FUNC1(port, tx_desc);
	txq_pcpu->txq_put_index++;
	if (txq_pcpu->txq_put_index == txq_pcpu->size)
		txq_pcpu->txq_put_index = 0;
}