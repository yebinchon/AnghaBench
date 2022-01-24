#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct mtk_ecc_config {int op; scalar_t__ mode; } ;
struct mtk_ecc {scalar_t__ regs; TYPE_1__* caps; int /*<<< orphan*/  done; int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; } ;
typedef  enum mtk_ecc_operation { ____Placeholder_mtk_ecc_operation } mtk_ecc_operation ;
struct TYPE_2__ {scalar_t__* ecc_regs; scalar_t__ pg_irq_sel; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 size_t ECC_DECIRQ_EN ; 
 size_t ECC_ENCIRQ_EN ; 
 int ECC_ENCODE ; 
 int /*<<< orphan*/  ECC_IRQ_EN ; 
 scalar_t__ ECC_NFI_MODE ; 
 int /*<<< orphan*/  ECC_OP_ENABLE ; 
 int /*<<< orphan*/  ECC_PG_IRQ_SEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct mtk_ecc*,struct mtk_ecc_config*) ; 
 int /*<<< orphan*/  FUNC4 (struct mtk_ecc*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC8(struct mtk_ecc *ecc, struct mtk_ecc_config *config)
{
	enum mtk_ecc_operation op = config->op;
	u16 reg_val;
	int ret;

	ret = FUNC5(&ecc->lock);
	if (ret) {
		FUNC1(ecc->dev, "interrupted when attempting to lock\n");
		return ret;
	}

	FUNC4(ecc, op);

	ret = FUNC3(ecc, config);
	if (ret) {
		FUNC6(&ecc->lock);
		return ret;
	}

	if (config->mode != ECC_NFI_MODE || op != ECC_ENCODE) {
		FUNC2(&ecc->done);
		reg_val = ECC_IRQ_EN;
		/*
		 * For ECC_NFI_MODE, if ecc->caps->pg_irq_sel is 1, then it
		 * means this chip can only generate one ecc irq during page
		 * read / write. If is 0, generate one ecc irq each ecc step.
		 */
		if (ecc->caps->pg_irq_sel && config->mode == ECC_NFI_MODE)
			reg_val |= ECC_PG_IRQ_SEL;
		if (op == ECC_ENCODE)
			FUNC7(reg_val, ecc->regs +
			       ecc->caps->ecc_regs[ECC_ENCIRQ_EN]);
		else
			FUNC7(reg_val, ecc->regs +
			       ecc->caps->ecc_regs[ECC_DECIRQ_EN]);
	}

	FUNC7(ECC_OP_ENABLE, ecc->regs + FUNC0(op));

	return 0;
}