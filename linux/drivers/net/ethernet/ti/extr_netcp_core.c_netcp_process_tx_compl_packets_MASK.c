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
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {scalar_t__ len; scalar_t__ cb; } ;
struct netcp_tx_cb {int /*<<< orphan*/  ts_context; int /*<<< orphan*/  (* txtstamp ) (int /*<<< orphan*/ ,struct sk_buff*) ;} ;
struct netcp_stats {int /*<<< orphan*/  syncp_tx; int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  tx_errors; } ;
struct netcp_intf {scalar_t__ tx_resume_threshold; int /*<<< orphan*/  ndev; int /*<<< orphan*/  tx_pool; int /*<<< orphan*/  ndev_dev; int /*<<< orphan*/  tx_compl_q; struct netcp_stats stats; } ;
struct knav_dma_desc {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct knav_dma_desc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct knav_dma_desc* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC6 (struct netcp_intf*,struct knav_dma_desc*,unsigned int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int) ; 

__attribute__((used)) static int FUNC15(struct netcp_intf *netcp,
					  unsigned int budget)
{
	struct netcp_stats *tx_stats = &netcp->stats;
	struct knav_dma_desc *desc;
	struct netcp_tx_cb *tx_cb;
	struct sk_buff *skb;
	unsigned int dma_sz;
	dma_addr_t dma;
	int pkts = 0;

	while (budget--) {
		dma = FUNC5(netcp->tx_compl_q, &dma_sz);
		if (!dma)
			break;
		desc = FUNC4(netcp->tx_pool, dma, dma_sz);
		if (FUNC14(!desc)) {
			FUNC1(netcp->ndev_dev, "failed to unmap Tx desc\n");
			tx_stats->tx_errors++;
			continue;
		}

		/* warning!!!! We are retrieving the virtual ptr in the sw_data
		 * field as a 32bit value. Will not work on 64bit machines
		 */
		skb = (struct sk_buff *)FUNC0(desc);
		FUNC6(netcp, desc, dma_sz);
		if (!skb) {
			FUNC1(netcp->ndev_dev, "No skb in Tx desc\n");
			tx_stats->tx_errors++;
			continue;
		}

		tx_cb = (struct netcp_tx_cb *)skb->cb;
		if (tx_cb->txtstamp)
			tx_cb->txtstamp(tx_cb->ts_context, skb);

		if (FUNC8(netcp->ndev, skb) &&
		    FUNC7(netcp->ndev) &&
		    (FUNC3(netcp->tx_pool) >
		    netcp->tx_resume_threshold)) {
			u16 subqueue = FUNC10(skb);

			FUNC9(netcp->ndev, subqueue);
		}

		FUNC12(&tx_stats->syncp_tx);
		tx_stats->tx_packets++;
		tx_stats->tx_bytes += skb->len;
		FUNC13(&tx_stats->syncp_tx);
		FUNC2(skb);
		pkts++;
	}
	return pkts;
}