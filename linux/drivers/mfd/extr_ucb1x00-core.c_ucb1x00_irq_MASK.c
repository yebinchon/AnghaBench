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
struct ucb1x00 {scalar_t__ irq_base; } ;
struct irq_desc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  UCB_IE_CLEAR ; 
 int /*<<< orphan*/  UCB_IE_STATUS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 struct ucb1x00* FUNC1 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ucb1x00*) ; 
 int /*<<< orphan*/  FUNC3 (struct ucb1x00*) ; 
 unsigned int FUNC4 (struct ucb1x00*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ucb1x00*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC6(struct irq_desc *desc)
{
	struct ucb1x00 *ucb = FUNC1(desc);
	unsigned int isr, i;

	FUNC3(ucb);
	isr = FUNC4(ucb, UCB_IE_STATUS);
	FUNC5(ucb, UCB_IE_CLEAR, isr);
	FUNC5(ucb, UCB_IE_CLEAR, 0);

	for (i = 0; i < 16 && isr; i++, isr >>= 1)
		if (isr & 1)
			FUNC0(ucb->irq_base + i);
	FUNC2(ucb);
}