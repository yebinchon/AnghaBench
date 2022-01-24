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
typedef  int u32 ;
struct sk_buff {scalar_t__ len; } ;
struct net_device {int dummy; } ;
struct hisi_femac_queue {size_t tail; int num; struct sk_buff** skb; } ;
struct hisi_femac_priv {int tx_fifo_used_cnt; scalar_t__ port_base; struct hisi_femac_queue txq; } ;

/* Variables and functions */
 scalar_t__ ADDRQ_STAT ; 
 int TX_CNT_INUSE_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct hisi_femac_priv*,struct sk_buff*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*,int,int) ; 
 struct hisi_femac_priv* FUNC4 (struct net_device*) ; 
 int FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static void FUNC11(struct net_device *dev)
{
	struct sk_buff *skb;
	struct hisi_femac_priv *priv = FUNC4(dev);
	struct hisi_femac_queue *txq = &priv->txq;
	unsigned int bytes_compl = 0, pkts_compl = 0;
	u32 val;

	FUNC6(dev);

	val = FUNC9(priv->port_base + ADDRQ_STAT) & TX_CNT_INUSE_MASK;
	while (val < priv->tx_fifo_used_cnt) {
		skb = txq->skb[txq->tail];
		if (FUNC10(!skb)) {
			FUNC3(dev, "xmitq_cnt_inuse=%d, tx_fifo_used=%d\n",
				   val, priv->tx_fifo_used_cnt);
			break;
		}
		FUNC1(priv, skb, txq->tail);
		pkts_compl++;
		bytes_compl += skb->len;
		FUNC0(skb);

		priv->tx_fifo_used_cnt--;

		val = FUNC9(priv->port_base + ADDRQ_STAT) & TX_CNT_INUSE_MASK;
		txq->skb[txq->tail] = NULL;
		txq->tail = (txq->tail + 1) % txq->num;
	}

	FUNC2(dev, pkts_compl, bytes_compl);

	if (FUNC10(FUNC5(dev)) && pkts_compl)
		FUNC8(dev);

	FUNC7(dev);
}