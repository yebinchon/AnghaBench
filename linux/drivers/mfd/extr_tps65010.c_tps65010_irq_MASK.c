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
struct tps65010 {int /*<<< orphan*/  work; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FLAG_IRQ_ENABLE ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  system_power_efficient_wq ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *_tps)
{
	struct tps65010		*tps = _tps;

	FUNC0(irq);
	FUNC2(FLAG_IRQ_ENABLE, &tps->flags);
	FUNC1(system_power_efficient_wq, &tps->work, 0);
	return IRQ_HANDLED;
}