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
struct tx_queue {int index; int tx_curr_desc; scalar_t__ tx_desc_dma; } ;
struct tx_desc {int dummy; } ;
struct netdev_queue {int dummy; } ;
struct mv643xx_eth_private {int work_tx_end; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  TXQ_COMMAND ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct netdev_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct netdev_queue*) ; 
 struct netdev_queue* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct mv643xx_eth_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct tx_queue*) ; 
 struct mv643xx_eth_private* FUNC7 (struct tx_queue*) ; 

__attribute__((used)) static void FUNC8(struct tx_queue *txq)
{
	struct mv643xx_eth_private *mp = FUNC7(txq);
	struct netdev_queue *nq = FUNC3(mp->dev, txq->index);
	u32 hw_desc_ptr;
	u32 expected_ptr;

	FUNC1(nq, FUNC5());

	if (FUNC4(mp, TXQ_COMMAND) & (1 << txq->index))
		goto out;

	hw_desc_ptr = FUNC4(mp, FUNC0(txq->index));
	expected_ptr = (u32)txq->tx_desc_dma +
				txq->tx_curr_desc * sizeof(struct tx_desc);

	if (hw_desc_ptr != expected_ptr)
		FUNC6(txq);

out:
	FUNC2(nq);

	mp->work_tx_end &= ~(1 << txq->index);
}