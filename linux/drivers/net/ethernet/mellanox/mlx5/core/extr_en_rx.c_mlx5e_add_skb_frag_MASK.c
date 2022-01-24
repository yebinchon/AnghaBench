#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct sk_buff {int dummy; } ;
struct mlx5e_rq {int /*<<< orphan*/  pdev; } ;
struct mlx5e_dma_info {int /*<<< orphan*/  page; scalar_t__ addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  nr_frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,unsigned int) ; 
 TYPE_1__* FUNC3 (struct sk_buff*) ; 

__attribute__((used)) static inline void
FUNC4(struct mlx5e_rq *rq, struct sk_buff *skb,
		   struct mlx5e_dma_info *di, u32 frag_offset, u32 len,
		   unsigned int truesize)
{
	FUNC0(rq->pdev,
				di->addr + frag_offset,
				len, DMA_FROM_DEVICE);
	FUNC1(di->page);
	FUNC2(skb, FUNC3(skb)->nr_frags,
			di->page, frag_offset, len, truesize);
}