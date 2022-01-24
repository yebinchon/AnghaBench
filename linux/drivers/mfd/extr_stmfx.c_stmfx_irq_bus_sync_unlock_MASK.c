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
struct stmfx {int /*<<< orphan*/  lock; int /*<<< orphan*/  irq_src; int /*<<< orphan*/  map; } ;
struct irq_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  STMFX_REG_IRQ_SRC_EN ; 
 struct stmfx* FUNC0 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct irq_data *data)
{
	struct stmfx *stmfx = FUNC0(data);

	FUNC2(stmfx->map, STMFX_REG_IRQ_SRC_EN, stmfx->irq_src);

	FUNC1(&stmfx->lock);
}