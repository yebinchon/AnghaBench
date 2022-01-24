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
struct tc6393xb {int irq_base; int /*<<< orphan*/  lock; scalar_t__ scr; } ;
struct irq_data {int irq; } ;

/* Variables and functions */
 scalar_t__ SCR_IMR ; 
 struct tc6393xb* FUNC0 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct irq_data *data)
{
	struct tc6393xb *tc6393xb = FUNC0(data);
	unsigned long flags;
	u8 imr;

	FUNC1(&tc6393xb->lock, flags);
	imr = FUNC3(tc6393xb->scr + SCR_IMR);
	imr &= ~(1 << (data->irq - tc6393xb->irq_base));
	FUNC4(imr, tc6393xb->scr + SCR_IMR);
	FUNC2(&tc6393xb->lock, flags);
}