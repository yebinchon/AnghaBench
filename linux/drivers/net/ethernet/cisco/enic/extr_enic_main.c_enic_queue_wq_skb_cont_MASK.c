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
struct vnic_wq {int dummy; } ;
struct sk_buff {int dummy; } ;
struct enic {TYPE_1__* pdev; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_4__ {int /*<<< orphan*/ * frags; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct enic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vnic_wq*,struct sk_buff*,int /*<<< orphan*/ ,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*) ; 
 TYPE_2__* FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct enic *enic, struct vnic_wq *wq,
				  struct sk_buff *skb, unsigned int len_left,
				  int loopback)
{
	const skb_frag_t *frag;
	dma_addr_t dma_addr;

	/* Queue additional data fragments */
	for (frag = FUNC4(skb)->frags; len_left; frag++) {
		len_left -= FUNC3(frag);
		dma_addr = FUNC2(&enic->pdev->dev, frag, 0,
					    FUNC3(frag),
					    DMA_TO_DEVICE);
		if (FUNC5(FUNC0(enic, dma_addr)))
			return -ENOMEM;
		FUNC1(wq, skb, dma_addr, FUNC3(frag),
					(len_left == 0),	/* EOP? */
					loopback);
	}

	return 0;
}