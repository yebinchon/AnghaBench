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
struct wcn36xx {int /*<<< orphan*/  tx_irq; int /*<<< orphan*/  rx_irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_TRIGGER_HIGH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct wcn36xx*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct wcn36xx*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  wcn36xx_irq_rx_ready ; 
 int /*<<< orphan*/  wcn36xx_irq_tx_complete ; 

__attribute__((used)) static int FUNC4(struct wcn36xx *wcn)
{
	int ret;

	ret = FUNC2(wcn->tx_irq, wcn36xx_irq_tx_complete,
			  IRQF_TRIGGER_HIGH, "wcn36xx_tx", wcn);
	if (ret) {
		FUNC3("failed to alloc tx irq\n");
		goto out_err;
	}

	ret = FUNC2(wcn->rx_irq, wcn36xx_irq_rx_ready, IRQF_TRIGGER_HIGH,
			  "wcn36xx_rx", wcn);
	if (ret) {
		FUNC3("failed to alloc rx irq\n");
		goto out_txirq;
	}

	FUNC0(wcn->rx_irq);

	return 0;

out_txirq:
	FUNC1(wcn->tx_irq, wcn);
out_err:
	return ret;

}