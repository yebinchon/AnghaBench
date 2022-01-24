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
struct ena_adapter {int /*<<< orphan*/  ena_dev; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENA_FLAG_DEVICE_RUNNING ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *data)
{
	struct ena_adapter *adapter = (struct ena_adapter *)data;

	FUNC0(adapter->ena_dev);

	/* Don't call the aenq handler before probe is done */
	if (FUNC2(FUNC3(ENA_FLAG_DEVICE_RUNNING, &adapter->flags)))
		FUNC1(adapter->ena_dev, data);

	return IRQ_HANDLED;
}