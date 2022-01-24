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
typedef  int u32 ;
struct mtk_eth {int /*<<< orphan*/  rx_irq_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTK_PDMA_INT_MASK ; 
 int FUNC0 (struct mtk_eth*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_eth*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline void FUNC4(struct mtk_eth *eth, u32 mask)
{
	unsigned long flags;
	u32 val;

	FUNC2(&eth->rx_irq_lock, flags);
	val = FUNC0(eth, MTK_PDMA_INT_MASK);
	FUNC1(eth, val | mask, MTK_PDMA_INT_MASK);
	FUNC3(&eth->rx_irq_lock, flags);
}