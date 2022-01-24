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
struct vnic_rq_buf {unsigned int len; int /*<<< orphan*/  dma_addr; struct sk_buff* os_buf; } ;
struct vnic_rq {struct vnic_rq_buf* to_use; int /*<<< orphan*/  vdev; } ;
struct sk_buff {int /*<<< orphan*/  data; } ;
struct net_device {unsigned int mtu; } ;
struct enic {int /*<<< orphan*/  pdev; struct net_device* netdev; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 unsigned int VLAN_ETH_HLEN ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct enic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vnic_rq*,struct sk_buff*,unsigned int,int /*<<< orphan*/ ,unsigned int) ; 
 struct sk_buff* FUNC3 (struct net_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 struct enic* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct vnic_rq *rq)
{
	struct enic *enic = FUNC6(rq->vdev);
	struct net_device *netdev = enic->netdev;
	struct sk_buff *skb;
	unsigned int len = netdev->mtu + VLAN_ETH_HLEN;
	unsigned int os_buf_index = 0;
	dma_addr_t dma_addr;
	struct vnic_rq_buf *buf = rq->to_use;

	if (buf->os_buf) {
		FUNC2(rq, buf->os_buf, os_buf_index, buf->dma_addr,
				   buf->len);

		return 0;
	}
	skb = FUNC3(netdev, len);
	if (!skb)
		return -ENOMEM;

	dma_addr = FUNC4(enic->pdev, skb->data, len,
				  PCI_DMA_FROMDEVICE);
	if (FUNC5(FUNC1(enic, dma_addr))) {
		FUNC0(skb);
		return -ENOMEM;
	}

	FUNC2(rq, skb, os_buf_index,
		dma_addr, len);

	return 0;
}