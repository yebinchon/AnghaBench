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
struct pnp_dev {int dummy; } ;
struct fintek_dev {int /*<<< orphan*/  rdev; int /*<<< orphan*/  cir_port_len; int /*<<< orphan*/  cir_addr; int /*<<< orphan*/  cir_irq; int /*<<< orphan*/  fintek_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CIR_STATUS ; 
 int /*<<< orphan*/  CIR_STATUS_IRQ_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct fintek_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fintek_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct fintek_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct fintek_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct fintek_dev*) ; 
 struct fintek_dev* FUNC5 (struct pnp_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC10(struct pnp_dev *pdev)
{
	struct fintek_dev *fintek = FUNC5(pdev);
	unsigned long flags;

	FUNC8(&fintek->fintek_lock, flags);
	/* disable CIR */
	FUNC1(fintek);
	FUNC0(fintek, CIR_STATUS_IRQ_MASK, CIR_STATUS);
	/* enable CIR Wake (for IR power-on) */
	FUNC2(fintek);
	FUNC9(&fintek->fintek_lock, flags);

	/* free resources */
	FUNC3(fintek->cir_irq, fintek);
	FUNC7(fintek->cir_addr, fintek->cir_port_len);

	FUNC6(fintek->rdev);

	FUNC4(fintek);
}