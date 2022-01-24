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
struct mtk_ecc {int /*<<< orphan*/  lock; scalar_t__ regs; TYPE_1__* caps; } ;
typedef  enum mtk_ecc_operation { ____Placeholder_mtk_ecc_operation } mtk_ecc_operation ;
struct TYPE_2__ {scalar_t__* ecc_regs; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 size_t ECC_DECDONE ; 
 size_t ECC_DECIRQ_EN ; 
 int ECC_DECODE ; 
 size_t ECC_ENCIRQ_EN ; 
 int ECC_ENCODE ; 
 int /*<<< orphan*/  ECC_OP_DISABLE ; 
 scalar_t__ ECC_OP_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_ecc*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC5(struct mtk_ecc *ecc)
{
	enum mtk_ecc_operation op = ECC_ENCODE;

	/* find out the running operation */
	if (FUNC3(ecc->regs + FUNC0(op)) != ECC_OP_ENABLE)
		op = ECC_DECODE;

	/* disable it */
	FUNC1(ecc, op);
	if (op == ECC_DECODE) {
		/*
		 * Clear decode IRQ status in case there is a timeout to wait
		 * decode IRQ.
		 */
		FUNC3(ecc->regs + ecc->caps->ecc_regs[ECC_DECDONE]);
		FUNC4(0, ecc->regs + ecc->caps->ecc_regs[ECC_DECIRQ_EN]);
	} else {
		FUNC4(0, ecc->regs + ecc->caps->ecc_regs[ECC_ENCIRQ_EN]);
	}

	FUNC4(ECC_OP_DISABLE, ecc->regs + FUNC0(op));

	FUNC2(&ecc->lock);
}