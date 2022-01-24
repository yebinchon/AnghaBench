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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct mvpp2_tx_queue {int descs_dma; int last_desc; int /*<<< orphan*/  next_desc_to_proc; int /*<<< orphan*/  descs; } ;
struct mvpp2 {scalar_t__ hw_version; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ MVPP21 ; 
 int MVPP22_AGGR_TXQ_DESC_ADDR_OFFS ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int MVPP2_AGGR_TXQ_SIZE ; 
 int MVPP2_DESC_ALIGNED_SIZE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mvpp2*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mvpp2*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev,
			       struct mvpp2_tx_queue *aggr_txq,
			       unsigned int thread, struct mvpp2 *priv)
{
	u32 txq_dma;

	/* Allocate memory for TX descriptors */
	aggr_txq->descs = FUNC3(&pdev->dev,
					     MVPP2_AGGR_TXQ_SIZE * MVPP2_DESC_ALIGNED_SIZE,
					     &aggr_txq->descs_dma, GFP_KERNEL);
	if (!aggr_txq->descs)
		return -ENOMEM;

	aggr_txq->last_desc = MVPP2_AGGR_TXQ_SIZE - 1;

	/* Aggr TXQ no reset WA */
	aggr_txq->next_desc_to_proc = FUNC4(priv,
						 FUNC2(thread));

	/* Set Tx descriptors queue starting address indirect
	 * access
	 */
	if (priv->hw_version == MVPP21)
		txq_dma = aggr_txq->descs_dma;
	else
		txq_dma = aggr_txq->descs_dma >>
			MVPP22_AGGR_TXQ_DESC_ADDR_OFFS;

	FUNC5(priv, FUNC0(thread), txq_dma);
	FUNC5(priv, FUNC1(thread),
		    MVPP2_AGGR_TXQ_SIZE);

	return 0;
}