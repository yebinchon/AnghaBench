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
struct net_device {int dummy; } ;
struct mvpp2_txq_pcpu {int txq_put_index; scalar_t__ tso_headers_dma; } ;
struct mvpp2_tx_queue {int /*<<< orphan*/  id; } ;
struct mvpp2_tx_desc {int dummy; } ;
struct mvpp2_port {int dummy; } ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int MVPP2_TXD_F_DESC ; 
 int MVPP2_TXD_PADDING_DISABLE ; 
 int TSO_HEADER_SIZE ; 
 int FUNC0 (struct mvpp2_port*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct mvpp2_port*,struct mvpp2_tx_desc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mvpp2_port*,struct mvpp2_tx_desc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct mvpp2_port*,struct mvpp2_tx_desc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mvpp2_port*,struct mvpp2_tx_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mvpp2_port*,struct mvpp2_txq_pcpu*,int /*<<< orphan*/ *,struct mvpp2_tx_desc*) ; 
 struct mvpp2_tx_desc* FUNC6 (struct mvpp2_tx_queue*) ; 
 struct mvpp2_port* FUNC7 (struct net_device*) ; 

__attribute__((used)) static inline void FUNC8(struct sk_buff *skb,
				     struct net_device *dev,
				     struct mvpp2_tx_queue *txq,
				     struct mvpp2_tx_queue *aggr_txq,
				     struct mvpp2_txq_pcpu *txq_pcpu,
				     int hdr_sz)
{
	struct mvpp2_port *port = FUNC7(dev);
	struct mvpp2_tx_desc *tx_desc = FUNC6(aggr_txq);
	dma_addr_t addr;

	FUNC4(port, tx_desc, txq->id);
	FUNC3(port, tx_desc, hdr_sz);

	addr = txq_pcpu->tso_headers_dma +
	       txq_pcpu->txq_put_index * TSO_HEADER_SIZE;
	FUNC2(port, tx_desc, addr);

	FUNC1(port, tx_desc, FUNC0(port, skb) |
					    MVPP2_TXD_F_DESC |
					    MVPP2_TXD_PADDING_DISABLE);
	FUNC5(port, txq_pcpu, NULL, tx_desc);
}