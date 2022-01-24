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
typedef  scalar_t__ u32 ;
struct hns3_nic_ring_data {struct hns3_enet_ring* ring; } ;
struct hns3_nic_priv {int /*<<< orphan*/  state; struct hns3_nic_ring_data* ring_data; } ;
struct hns3_enet_ring {TYPE_2__* tqp; } ;
struct TYPE_4__ {scalar_t__ num_tqps; } ;
struct hnae3_handle {TYPE_3__* pdev; TYPE_1__ kinfo; struct hns3_nic_priv* priv; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {scalar_t__ io_base; } ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int EPERM ; 
 int /*<<< orphan*/  HNS3_NIC_STATE_INITED ; 
 int /*<<< orphan*/  HNS3_NIC_STATE_RESETTING ; 
 scalar_t__ HNS3_RING_RX_RING_BASEADDR_H_REG ; 
 scalar_t__ HNS3_RING_RX_RING_BASEADDR_L_REG ; 
 scalar_t__ HNS3_RING_RX_RING_BD_LEN_REG ; 
 scalar_t__ HNS3_RING_RX_RING_BD_NUM_REG ; 
 scalar_t__ HNS3_RING_RX_RING_FBDNUM_REG ; 
 scalar_t__ HNS3_RING_RX_RING_HEAD_REG ; 
 scalar_t__ HNS3_RING_RX_RING_PKTNUM_RECORD_REG ; 
 scalar_t__ HNS3_RING_RX_RING_TAIL_REG ; 
 scalar_t__ HNS3_RING_TX_RING_BASEADDR_H_REG ; 
 scalar_t__ HNS3_RING_TX_RING_BASEADDR_L_REG ; 
 scalar_t__ HNS3_RING_TX_RING_BD_NUM_REG ; 
 scalar_t__ HNS3_RING_TX_RING_FBDNUM_REG ; 
 scalar_t__ HNS3_RING_TX_RING_HEAD_REG ; 
 scalar_t__ HNS3_RING_TX_RING_OFFSET_REG ; 
 scalar_t__ HNS3_RING_TX_RING_PKTNUM_RECORD_REG ; 
 scalar_t__ HNS3_RING_TX_RING_TAIL_REG ; 
 scalar_t__ HNS3_RING_TX_RING_TC_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct hnae3_handle *h,
			       const char *cmd_buf)
{
	struct hns3_nic_priv *priv = h->priv;
	struct hns3_nic_ring_data *ring_data;
	struct hns3_enet_ring *ring;
	u32 base_add_l, base_add_h;
	u32 queue_num, queue_max;
	u32 value, i = 0;
	int cnt;

	if (!priv->ring_data) {
		FUNC0(&h->pdev->dev, "ring_data is NULL\n");
		return -EFAULT;
	}

	queue_max = h->kinfo.num_tqps;
	cnt = FUNC2(&cmd_buf[11], 0, &queue_num);
	if (cnt)
		queue_num = 0;
	else
		queue_max = queue_num + 1;

	FUNC1(&h->pdev->dev, "queue info\n");

	if (queue_num >= h->kinfo.num_tqps) {
		FUNC0(&h->pdev->dev,
			"Queue number(%u) is out of range(0-%u)\n", queue_num,
			h->kinfo.num_tqps - 1);
		return -EINVAL;
	}

	ring_data = priv->ring_data;
	for (i = queue_num; i < queue_max; i++) {
		/* Each cycle needs to determine whether the instance is reset,
		 * to prevent reference to invalid memory. And need to ensure
		 * that the following code is executed within 100ms.
		 */
		if (!FUNC4(HNS3_NIC_STATE_INITED, &priv->state) ||
		    FUNC4(HNS3_NIC_STATE_RESETTING, &priv->state))
			return -EPERM;

		ring = ring_data[(u32)(i + h->kinfo.num_tqps)].ring;
		base_add_h = FUNC3(ring->tqp->io_base +
					   HNS3_RING_RX_RING_BASEADDR_H_REG);
		base_add_l = FUNC3(ring->tqp->io_base +
					   HNS3_RING_RX_RING_BASEADDR_L_REG);
		FUNC1(&h->pdev->dev, "RX(%d) BASE ADD: 0x%08x%08x\n", i,
			 base_add_h, base_add_l);

		value = FUNC3(ring->tqp->io_base +
				      HNS3_RING_RX_RING_BD_NUM_REG);
		FUNC1(&h->pdev->dev, "RX(%d) RING BD NUM: %u\n", i, value);

		value = FUNC3(ring->tqp->io_base +
				      HNS3_RING_RX_RING_BD_LEN_REG);
		FUNC1(&h->pdev->dev, "RX(%d) RING BD LEN: %u\n", i, value);

		value = FUNC3(ring->tqp->io_base +
				      HNS3_RING_RX_RING_TAIL_REG);
		FUNC1(&h->pdev->dev, "RX(%d) RING TAIL: %u\n", i, value);

		value = FUNC3(ring->tqp->io_base +
				      HNS3_RING_RX_RING_HEAD_REG);
		FUNC1(&h->pdev->dev, "RX(%d) RING HEAD: %u\n", i, value);

		value = FUNC3(ring->tqp->io_base +
				      HNS3_RING_RX_RING_FBDNUM_REG);
		FUNC1(&h->pdev->dev, "RX(%d) RING FBDNUM: %u\n", i, value);

		value = FUNC3(ring->tqp->io_base +
				      HNS3_RING_RX_RING_PKTNUM_RECORD_REG);
		FUNC1(&h->pdev->dev, "RX(%d) RING PKTNUM: %u\n", i, value);

		ring = ring_data[i].ring;
		base_add_h = FUNC3(ring->tqp->io_base +
					   HNS3_RING_TX_RING_BASEADDR_H_REG);
		base_add_l = FUNC3(ring->tqp->io_base +
					   HNS3_RING_TX_RING_BASEADDR_L_REG);
		FUNC1(&h->pdev->dev, "TX(%d) BASE ADD: 0x%08x%08x\n", i,
			 base_add_h, base_add_l);

		value = FUNC3(ring->tqp->io_base +
				      HNS3_RING_TX_RING_BD_NUM_REG);
		FUNC1(&h->pdev->dev, "TX(%d) RING BD NUM: %u\n", i, value);

		value = FUNC3(ring->tqp->io_base +
				      HNS3_RING_TX_RING_TC_REG);
		FUNC1(&h->pdev->dev, "TX(%d) RING TC: %u\n", i, value);

		value = FUNC3(ring->tqp->io_base +
				      HNS3_RING_TX_RING_TAIL_REG);
		FUNC1(&h->pdev->dev, "TX(%d) RING TAIL: %u\n", i, value);

		value = FUNC3(ring->tqp->io_base +
				      HNS3_RING_TX_RING_HEAD_REG);
		FUNC1(&h->pdev->dev, "TX(%d) RING HEAD: %u\n", i, value);

		value = FUNC3(ring->tqp->io_base +
				      HNS3_RING_TX_RING_FBDNUM_REG);
		FUNC1(&h->pdev->dev, "TX(%d) RING FBDNUM: %u\n", i, value);

		value = FUNC3(ring->tqp->io_base +
				      HNS3_RING_TX_RING_OFFSET_REG);
		FUNC1(&h->pdev->dev, "TX(%d) RING OFFSET: %u\n", i, value);

		value = FUNC3(ring->tqp->io_base +
				      HNS3_RING_TX_RING_PKTNUM_RECORD_REG);
		FUNC1(&h->pdev->dev, "TX(%d) RING PKTNUM: %u\n\n", i,
			 value);
	}

	return 0;
}