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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int /*<<< orphan*/  protocol; int /*<<< orphan*/  data; } ;
struct TYPE_4__ {scalar_t__ len; } ;
struct bnad_rx_unmap {TYPE_2__ vector; int /*<<< orphan*/ * skb; } ;
struct bnad {int /*<<< orphan*/  netdev; TYPE_1__* pcidev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  dma_addr ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC5(struct bnad *bnad, struct sk_buff *skb,
		  struct bnad_rx_unmap *unmap, u32 len)
{
	FUNC3(skb->data);

	FUNC1(&bnad->pcidev->dev,
			FUNC0(&unmap->vector, dma_addr),
			unmap->vector.len, DMA_FROM_DEVICE);

	FUNC4(skb, len);
	skb->protocol = FUNC2(skb, bnad->netdev);

	unmap->skb = NULL;
	unmap->vector.len = 0;
}