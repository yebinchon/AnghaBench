#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_queue {int /*<<< orphan*/  free_cnt; } ;
struct sk_buff {scalar_t__ len; } ;
struct nicvf {TYPE_2__* drv_stats; TYPE_1__* qs; int /*<<< orphan*/  netdev; scalar_t__* snicvf; scalar_t__ xdp_tx_queues; scalar_t__ xdp_prog; } ;
struct netdev_queue {int dummy; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
struct TYPE_4__ {int /*<<< orphan*/  txq_stop; } ;
struct TYPE_3__ {struct snd_queue* sq; } ;

/* Variables and functions */
 scalar_t__ ETH_HLEN ; 
 int MAX_SND_QUEUES_PER_QS ; 
 scalar_t__ MIN_SQ_DESC_PER_PKT_XMIT ; 
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct netdev_queue* FUNC2 (struct net_device*,int) ; 
 struct nicvf* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC6 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC7 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC8 (struct nicvf*,int /*<<< orphan*/ ,struct net_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct nicvf*,struct snd_queue*,struct sk_buff*,int) ; 
 int FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tx_err ; 

__attribute__((used)) static netdev_tx_t FUNC13(struct sk_buff *skb, struct net_device *netdev)
{
	struct nicvf *nic = FUNC3(netdev);
	int qid = FUNC10(skb);
	struct netdev_queue *txq = FUNC2(netdev, qid);
	struct nicvf *snic;
	struct snd_queue *sq;
	int tmp;

	/* Check for minimum packet length */
	if (skb->len <= ETH_HLEN) {
		FUNC1(skb);
		return NETDEV_TX_OK;
	}

	/* In XDP case, initial HW tx queues are used for XDP,
	 * but stack's queue mapping starts at '0', so skip the
	 * Tx queues attached to Rx queues for XDP.
	 */
	if (nic->xdp_prog)
		qid += nic->xdp_tx_queues;

	snic = nic;
	/* Get secondary Qset's SQ structure */
	if (qid >= MAX_SND_QUEUES_PER_QS) {
		tmp = qid / MAX_SND_QUEUES_PER_QS;
		snic = (struct nicvf *)nic->snicvf[tmp - 1];
		if (!snic) {
			FUNC4(nic->netdev,
				    "Secondary Qset#%d's ptr not initialized\n",
				    tmp - 1);
			FUNC1(skb);
			return NETDEV_TX_OK;
		}
		qid = qid % MAX_SND_QUEUES_PER_QS;
	}

	sq = &snic->qs->sq[qid];
	if (!FUNC5(txq) &&
	    !FUNC9(snic, sq, skb, qid)) {
		FUNC6(txq);

		/* Barrier, so that stop_queue visible to other cpus */
		FUNC11();

		/* Check again, incase another cpu freed descriptors */
		if (FUNC0(&sq->free_cnt) > MIN_SQ_DESC_PER_PKT_XMIT) {
			FUNC7(txq);
		} else {
			FUNC12(nic->drv_stats->txq_stop);
			FUNC8(nic, tx_err, netdev,
				   "Transmit ring full, stopping SQ%d\n", qid);
		}
		return NETDEV_TX_BUSY;
	}

	return NETDEV_TX_OK;
}