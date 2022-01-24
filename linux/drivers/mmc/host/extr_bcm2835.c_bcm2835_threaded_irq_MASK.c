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
struct bcm2835_host {int irq_block; int irq_busy; int irq_data; int /*<<< orphan*/  mutex; int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (struct bcm2835_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm2835_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct bcm2835_host*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *dev_id)
{
	struct bcm2835_host *host = dev_id;
	unsigned long flags;
	bool block, busy, data;

	FUNC5(&host->lock, flags);

	block = host->irq_block;
	busy  = host->irq_busy;
	data  = host->irq_data;
	host->irq_block = false;
	host->irq_busy  = false;
	host->irq_data  = false;

	FUNC6(&host->lock, flags);

	FUNC3(&host->mutex);

	if (block)
		FUNC0(host);
	if (busy)
		FUNC1(host);
	if (data)
		FUNC2(host);

	FUNC4(&host->mutex);

	return IRQ_HANDLED;
}