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
typedef  scalar_t__ u16 ;
struct vnic_rq_buf {int /*<<< orphan*/  dma_addr; } ;
struct sk_buff {int /*<<< orphan*/  data; } ;
struct net_device {int dummy; } ;
struct enic {scalar_t__ rx_copybreak; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 struct sk_buff* FUNC1 (struct net_device*,scalar_t__) ; 
 struct enic* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(struct net_device *netdev, struct sk_buff **skb,
			     struct vnic_rq_buf *buf, u16 len)
{
	struct enic *enic = FUNC2(netdev);
	struct sk_buff *new_skb;

	if (len > enic->rx_copybreak)
		return false;
	new_skb = FUNC1(netdev, len);
	if (!new_skb)
		return false;
	FUNC3(enic->pdev, buf->dma_addr, len,
				    DMA_FROM_DEVICE);
	FUNC0(new_skb->data, (*skb)->data, len);
	*skb = new_skb;

	return true;
}