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
struct vnic_wq {int dummy; } ;
struct sk_buff {unsigned int len; unsigned int csum_offset; int /*<<< orphan*/  data; } ;
struct enic {int /*<<< orphan*/  pdev; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct enic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vnic_wq*,struct sk_buff*,int /*<<< orphan*/ ,unsigned int,unsigned int,unsigned int,int,unsigned int,int,int) ; 
 int FUNC2 (struct enic*,struct vnic_wq*,struct sk_buff*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (struct sk_buff*) ; 
 unsigned int FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct enic *enic, struct vnic_wq *wq,
				     struct sk_buff *skb, int vlan_tag_insert,
				     unsigned int vlan_tag, int loopback)
{
	unsigned int head_len = FUNC5(skb);
	unsigned int len_left = skb->len - head_len;
	unsigned int hdr_len = FUNC4(skb);
	unsigned int csum_offset = hdr_len + skb->csum_offset;
	int eop = (len_left == 0);
	dma_addr_t dma_addr;
	int err = 0;

	dma_addr = FUNC3(enic->pdev, skb->data, head_len,
				  PCI_DMA_TODEVICE);
	if (FUNC6(FUNC0(enic, dma_addr)))
		return -ENOMEM;

	/* Queue the main skb fragment. The fragments are no larger
	 * than max MTU(9000)+ETH_HDR_LEN(14) bytes, which is less
	 * than WQ_ENET_MAX_DESC_LEN length. So only one descriptor
	 * per fragment is queued.
	 */
	FUNC1(wq, skb, dma_addr, head_len,	csum_offset,
				   hdr_len, vlan_tag_insert, vlan_tag, eop,
				   loopback);

	if (!eop)
		err = FUNC2(enic, wq, skb, len_left, loopback);

	return err;
}