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
typedef  int u32 ;
struct alx_hw {int dummy; } ;
struct alx_priv {int int_mask; int /*<<< orphan*/  irq_lock; TYPE_1__** qnapi; struct alx_hw hw; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALX_IMR ; 
 int /*<<< orphan*/  ALX_ISR ; 
 int ALX_ISR_ALL_QUEUES ; 
 int ALX_ISR_DIS ; 
 int ALX_ISR_RX_Q0 ; 
 int ALX_ISR_TX_Q0 ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ FUNC0 (struct alx_priv*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct alx_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC5(struct alx_priv *alx, u32 intr)
{
	struct alx_hw *hw = &alx->hw;

	FUNC3(&alx->irq_lock);

	/* ACK interrupt */
	FUNC1(hw, ALX_ISR, intr | ALX_ISR_DIS);
	intr &= alx->int_mask;

	if (FUNC0(alx, intr))
		goto out;

	if (intr & (ALX_ISR_TX_Q0 | ALX_ISR_RX_Q0)) {
		FUNC2(&alx->qnapi[0]->napi);
		/* mask rx/tx interrupt, enable them when napi complete */
		alx->int_mask &= ~ALX_ISR_ALL_QUEUES;
		FUNC1(hw, ALX_IMR, alx->int_mask);
	}

	FUNC1(hw, ALX_ISR, 0);

 out:
	FUNC4(&alx->irq_lock);
	return IRQ_HANDLED;
}