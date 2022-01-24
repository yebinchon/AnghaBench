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
typedef  scalar_t__ u32 ;
struct tx_queue {int tx_curr_desc; int /*<<< orphan*/  index; scalar_t__ tx_desc_dma; } ;
struct tx_desc {int dummy; } ;
struct mv643xx_eth_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct mv643xx_eth_private* FUNC1 (struct tx_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct mv643xx_eth_private*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct tx_queue *txq)
{
	struct mv643xx_eth_private *mp = FUNC1(txq);
	u32 addr;

	addr = (u32)txq->tx_desc_dma;
	addr += txq->tx_curr_desc * sizeof(struct tx_desc);
	FUNC2(mp, FUNC0(txq->index), addr);
}