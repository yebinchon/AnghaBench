#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct netdev_queue {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  tx_dropped; } ;
struct net_device {TYPE_3__ stats; } ;
struct cpts {int dummy; } ;
struct cpsw_priv {scalar_t__ emac_port; scalar_t__ tx_ts_enabled; struct cpsw_common* cpsw; } ;
struct TYPE_6__ {scalar_t__ dual_emac; } ;
struct cpsw_common {int tx_ch_num; TYPE_2__ data; TYPE_1__* txv; struct cpts* cpts; } ;
struct cpdma_chan {int dummy; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
struct TYPE_8__ {int tx_flags; } ;
struct TYPE_5__ {struct cpdma_chan* ch; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPSW_MIN_PACKET_SIZE ; 
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  NET_XMIT_DROP ; 
 int SKBTX_HW_TSTAMP ; 
 int SKBTX_IN_PROGRESS ; 
 int FUNC0 (struct cpdma_chan*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (struct cpdma_chan*) ; 
 int /*<<< orphan*/  FUNC2 (struct cpsw_priv*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (struct cpts*,struct sk_buff*) ; 
 struct netdev_queue* FUNC4 (struct net_device*,int) ; 
 struct cpsw_priv* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC7 (struct netdev_queue*) ; 
 int FUNC8 (struct sk_buff*) ; 
 scalar_t__ FUNC9 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  tx_err ; 
 scalar_t__ FUNC13 (int) ; 

__attribute__((used)) static netdev_tx_t FUNC14(struct sk_buff *skb,
				       struct net_device *ndev)
{
	struct cpsw_priv *priv = FUNC5(ndev);
	struct cpsw_common *cpsw = priv->cpsw;
	struct cpts *cpts = cpsw->cpts;
	struct netdev_queue *txq;
	struct cpdma_chan *txch;
	int ret, q_idx;

	if (FUNC9(skb, CPSW_MIN_PACKET_SIZE)) {
		FUNC2(priv, tx_err, "packet pad failed\n");
		ndev->stats.tx_dropped++;
		return NET_XMIT_DROP;
	}

	if (FUNC10(skb)->tx_flags & SKBTX_HW_TSTAMP &&
	    priv->tx_ts_enabled && FUNC3(cpts, skb))
		FUNC10(skb)->tx_flags |= SKBTX_IN_PROGRESS;

	q_idx = FUNC8(skb);
	if (q_idx >= cpsw->tx_ch_num)
		q_idx = q_idx % cpsw->tx_ch_num;

	txch = cpsw->txv[q_idx].ch;
	txq = FUNC4(ndev, q_idx);
	FUNC11(skb);
	ret = FUNC0(txch, skb, skb->data, skb->len,
				priv->emac_port + cpsw->data.dual_emac);
	if (FUNC13(ret != 0)) {
		FUNC2(priv, tx_err, "desc submit failed\n");
		goto fail;
	}

	/* If there is no more tx desc left free then we need to
	 * tell the kernel to stop sending us tx frames.
	 */
	if (FUNC13(!FUNC1(txch))) {
		FUNC6(txq);

		/* Barrier, so that stop_queue visible to other cpus */
		FUNC12();

		if (FUNC1(txch))
			FUNC7(txq);
	}

	return NETDEV_TX_OK;
fail:
	ndev->stats.tx_dropped++;
	FUNC6(txq);

	/* Barrier, so that stop_queue visible to other cpus */
	FUNC12();

	if (FUNC1(txch))
		FUNC7(txq);

	return NETDEV_TX_BUSY;
}