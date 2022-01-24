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
struct tx_desc {scalar_t__ send_addr; } ;
struct net_device {int dummy; } ;
struct hip04_priv {unsigned int tx_tail; TYPE_1__** tx_skb; scalar_t__* tx_phys; int /*<<< orphan*/  dev; struct tx_desc* tx_desc; int /*<<< orphan*/  tx_head; } ;
struct TYPE_2__ {scalar_t__ len; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int TX_DESC_NUM ; 
 unsigned int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,unsigned int,unsigned int) ; 
 struct hip04_priv* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 unsigned int FUNC10 (int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct net_device *ndev, bool force)
{
	struct hip04_priv *priv = FUNC5(ndev);
	unsigned tx_tail = priv->tx_tail;
	struct tx_desc *desc;
	unsigned int bytes_compl = 0, pkts_compl = 0;
	unsigned int count;

	FUNC8();
	count = FUNC10(FUNC0(priv->tx_head), tx_tail);
	if (count == 0)
		goto out;

	while (count) {
		desc = &priv->tx_desc[tx_tail];
		if (desc->send_addr != 0) {
			if (force)
				desc->send_addr = 0;
			else
				break;
		}

		if (priv->tx_phys[tx_tail]) {
			FUNC3(priv->dev, priv->tx_phys[tx_tail],
					 priv->tx_skb[tx_tail]->len,
					 DMA_TO_DEVICE);
			priv->tx_phys[tx_tail] = 0;
		}
		pkts_compl++;
		bytes_compl += priv->tx_skb[tx_tail]->len;
		FUNC2(priv->tx_skb[tx_tail]);
		priv->tx_skb[tx_tail] = NULL;
		tx_tail = FUNC1(tx_tail);
		count--;
	}

	priv->tx_tail = tx_tail;
	FUNC9(); /* Ensure tx_tail visible to xmit */

out:
	if (pkts_compl || bytes_compl)
		FUNC4(ndev, pkts_compl, bytes_compl);

	if (FUNC11(FUNC6(ndev)) && (count < (TX_DESC_NUM - 1)))
		FUNC7(ndev);

	return count;
}