#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {scalar_t__ len; } ;
struct scatterlist {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  tx_no_mem; int /*<<< orphan*/  tx_full_ring; } ;
struct cfv_info {int watermark_tx; TYPE_7__* ndev; int /*<<< orphan*/  tx_lock; TYPE_3__* vq_tx; scalar_t__ reserved_mem; int /*<<< orphan*/  reserved_size; scalar_t__ genpool; TYPE_1__ stats; } ;
struct buf_info {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  tx_dropped; int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct TYPE_12__ {TYPE_2__ stats; } ;
struct TYPE_11__ {scalar_t__ num_free; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int NETDEV_TX_OK ; 
 struct buf_info* FUNC0 (struct cfv_info*,struct sk_buff*,struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct cfv_info*,struct buf_info*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 struct cfv_info* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC11 (int) ; 
 int FUNC12 (TYPE_3__*,struct scatterlist*,int,struct buf_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 int FUNC14 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC16(struct sk_buff *skb, struct net_device *netdev)
{
	struct cfv_info *cfv = FUNC5(netdev);
	struct buf_info *buf_info;
	struct scatterlist sg;
	unsigned long flags;
	bool flow_off = false;
	int ret;

	/* garbage collect released buffers */
	FUNC1(cfv->vq_tx);
	FUNC9(&cfv->tx_lock, flags);

	/* Flow-off check takes into account number of cpus to make sure
	 * virtqueue will not be overfilled in any possible smp conditions.
	 *
	 * Flow-on is triggered when sufficient buffers are freed
	 */
	if (FUNC11(cfv->vq_tx->num_free <= FUNC8())) {
		flow_off = true;
		cfv->stats.tx_full_ring++;
	}

	/* If we run out of memory, we release the memory reserve and retry
	 * allocation.
	 */
	buf_info = FUNC0(cfv, skb, &sg);
	if (FUNC11(!buf_info)) {
		cfv->stats.tx_no_mem++;
		flow_off = true;

		if (cfv->reserved_mem && cfv->genpool) {
			FUNC4(cfv->genpool,  cfv->reserved_mem,
				      cfv->reserved_size);
			cfv->reserved_mem = 0;
			buf_info = FUNC0(cfv, skb, &sg);
		}
	}

	if (FUNC11(flow_off)) {
		/* Turn flow on when a 1/4 of the descriptors are released */
		cfv->watermark_tx = FUNC14(cfv->vq_tx) / 4;
		/* Enable notifications of recycled TX buffers */
		FUNC13(cfv->vq_tx);
		FUNC7(netdev);
	}

	if (FUNC11(!buf_info)) {
		/* If the memory reserve does it's job, this shouldn't happen */
		FUNC6(cfv->ndev, "Out of gen_pool memory\n");
		goto err;
	}

	ret = FUNC12(cfv->vq_tx, &sg, 1, buf_info, GFP_ATOMIC);
	if (FUNC11((ret < 0))) {
		/* If flow control works, this shouldn't happen */
		FUNC6(cfv->ndev, "Failed adding buffer to TX vring:%d\n",
			    ret);
		goto err;
	}

	/* update netdev statistics */
	cfv->ndev->stats.tx_packets++;
	cfv->ndev->stats.tx_bytes += skb->len;
	FUNC10(&cfv->tx_lock, flags);

	/* tell the remote processor it has a pending message to read */
	FUNC15(cfv->vq_tx);

	FUNC2(skb);
	return NETDEV_TX_OK;
err:
	FUNC10(&cfv->tx_lock, flags);
	cfv->ndev->stats.tx_dropped++;
	FUNC3(cfv, buf_info);
	FUNC2(skb);
	return NETDEV_TX_OK;
}