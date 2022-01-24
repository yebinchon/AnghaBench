#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct net_device {size_t mtu; int /*<<< orphan*/  phydev; } ;
struct macb_queue {int /*<<< orphan*/  napi; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* mog_init_rings ) (struct macb*) ;} ;
struct macb {unsigned int num_queues; TYPE_3__* pdev; TYPE_2__* ptp_info; TYPE_1__ macbgem_ops; struct macb_queue* queues; int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* ptp_init ) (struct net_device*) ;} ;

/* Variables and functions */
 int EAGAIN ; 
 size_t ETH_FCS_LEN ; 
 size_t ETH_HLEN ; 
 size_t NET_IP_ALIGN ; 
 int FUNC0 (struct macb*) ; 
 int /*<<< orphan*/  FUNC1 (struct macb*) ; 
 int /*<<< orphan*/  FUNC2 (struct macb*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*,int) ; 
 struct macb* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct macb*) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 

__attribute__((used)) static int FUNC14(struct net_device *dev)
{
	struct macb *bp = FUNC6(dev);
	size_t bufsz = dev->mtu + ETH_HLEN + ETH_FCS_LEN + NET_IP_ALIGN;
	struct macb_queue *queue;
	unsigned int q;
	int err;

	FUNC4(bp->dev, "open\n");

	err = FUNC10(&bp->pdev->dev);
	if (err < 0)
		goto pm_exit;

	/* carrier starts down */
	FUNC7(dev);

	/* if the phy is not yet register, retry later*/
	if (!dev->phydev) {
		err = -EAGAIN;
		goto pm_exit;
	}

	/* RX buffers initialization */
	FUNC2(bp, bufsz);

	err = FUNC0(bp);
	if (err) {
		FUNC5(dev, "Unable to allocate DMA memory (error %d)\n",
			   err);
		goto pm_exit;
	}

	for (q = 0, queue = bp->queues; q < bp->num_queues; ++q, ++queue)
		FUNC3(&queue->napi);

	bp->macbgem_ops.mog_init_rings(bp);
	FUNC1(bp);

	/* schedule a link state check */
	FUNC9(dev->phydev);

	FUNC8(dev);

	if (bp->ptp_info)
		bp->ptp_info->ptp_init(dev);

pm_exit:
	if (err) {
		FUNC11(&bp->pdev->dev);
		return err;
	}
	return 0;
}