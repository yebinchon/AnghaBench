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
struct fintek_dev {int /*<<< orphan*/  logical_dev_cir; } ;

/* Variables and functions */
 int /*<<< orphan*/  CIR_CR_DEV_EN ; 
 int /*<<< orphan*/  CIR_STATUS ; 
 int /*<<< orphan*/  CIR_STATUS_IRQ_EN ; 
 int /*<<< orphan*/  CIR_STATUS_IRQ_MASK ; 
 int /*<<< orphan*/  LOGICAL_DEV_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct fintek_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fintek_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct fintek_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct fintek_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fintek_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct fintek_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct fintek_dev *fintek)
{
	/* set IRQ enabled */
	FUNC0(fintek, CIR_STATUS_IRQ_EN, CIR_STATUS);

	FUNC2(fintek);

	/* enable the CIR logical device */
	FUNC5(fintek, fintek->logical_dev_cir);
	FUNC3(fintek, LOGICAL_DEV_ENABLE, CIR_CR_DEV_EN);

	FUNC1(fintek);

	/* clear all pending interrupts */
	FUNC0(fintek, CIR_STATUS_IRQ_MASK, CIR_STATUS);

	/* enable interrupts */
	FUNC4(fintek);
}