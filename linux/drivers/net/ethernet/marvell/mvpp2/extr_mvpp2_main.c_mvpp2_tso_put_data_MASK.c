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
struct tso_t {int /*<<< orphan*/  data; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct mvpp2_txq_pcpu {int dummy; } ;
struct mvpp2_tx_queue {int /*<<< orphan*/  id; } ;
struct mvpp2_tx_desc {int dummy; } ;
struct mvpp2_port {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  MVPP2_TXD_L_DESC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mvpp2_port*,struct mvpp2_tx_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mvpp2_port*,struct mvpp2_tx_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mvpp2_port*,struct mvpp2_tx_desc*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mvpp2_port*,struct mvpp2_tx_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mvpp2_tx_queue*) ; 
 int /*<<< orphan*/  FUNC7 (struct mvpp2_port*,struct mvpp2_txq_pcpu*,struct sk_buff*,struct mvpp2_tx_desc*) ; 
 struct mvpp2_tx_desc* FUNC8 (struct mvpp2_tx_queue*) ; 
 struct mvpp2_port* FUNC9 (struct net_device*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC11(struct sk_buff *skb,
				     struct net_device *dev, struct tso_t *tso,
				     struct mvpp2_tx_queue *txq,
				     struct mvpp2_tx_queue *aggr_txq,
				     struct mvpp2_txq_pcpu *txq_pcpu,
				     int sz, bool left, bool last)
{
	struct mvpp2_port *port = FUNC9(dev);
	struct mvpp2_tx_desc *tx_desc = FUNC8(aggr_txq);
	dma_addr_t buf_dma_addr;

	FUNC5(port, tx_desc, txq->id);
	FUNC4(port, tx_desc, sz);

	buf_dma_addr = FUNC0(dev->dev.parent, tso->data, sz,
				      DMA_TO_DEVICE);
	if (FUNC10(FUNC1(dev->dev.parent, buf_dma_addr))) {
		FUNC6(txq);
		return -ENOMEM;
	}

	FUNC3(port, tx_desc, buf_dma_addr);

	if (!left) {
		FUNC2(port, tx_desc, MVPP2_TXD_L_DESC);
		if (last) {
			FUNC7(port, txq_pcpu, skb, tx_desc);
			return 0;
		}
	} else {
		FUNC2(port, tx_desc, 0);
	}

	FUNC7(port, txq_pcpu, NULL, tx_desc);
	return 0;
}