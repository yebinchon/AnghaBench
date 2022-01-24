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
typedef  int u8 ;
struct t7l66xb {int irq_base; int /*<<< orphan*/  lock; scalar_t__ scr; } ;
struct irq_data {int irq; } ;

/* Variables and functions */
 scalar_t__ SCR_IMR ; 
 struct t7l66xb* FUNC0 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct irq_data *data)
{
	struct t7l66xb *t7l66xb = FUNC0(data);
	unsigned long flags;
	u8 imr;

	FUNC1(&t7l66xb->lock, flags);
	imr = FUNC3(t7l66xb->scr + SCR_IMR);
	imr &= ~(1 << (data->irq - t7l66xb->irq_base));
	FUNC4(imr, t7l66xb->scr + SCR_IMR);
	FUNC2(&t7l66xb->lock, flags);
}