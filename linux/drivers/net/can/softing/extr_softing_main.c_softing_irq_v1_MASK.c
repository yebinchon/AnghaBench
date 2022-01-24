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
typedef  scalar_t__ uint8_t ;
struct softing {int /*<<< orphan*/ * dpram; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 size_t DPRAM_IRQ_TOHOST ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  IRQ_WAKE_THREAD ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC2(int irq, void *dev_id)
{
	struct softing *card = (struct softing *)dev_id;
	uint8_t ir;

	ir = FUNC0(&card->dpram[DPRAM_IRQ_TOHOST]);
	FUNC1(0, &card->dpram[DPRAM_IRQ_TOHOST]);
	return ir ? IRQ_WAKE_THREAD : IRQ_NONE;
}