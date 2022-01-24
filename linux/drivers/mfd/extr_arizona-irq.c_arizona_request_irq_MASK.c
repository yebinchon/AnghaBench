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
struct arizona {int dummy; } ;
typedef  int /*<<< orphan*/  irq_handler_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 int FUNC0 (struct arizona*,int) ; 
 int FUNC1 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,void*) ; 

int FUNC2(struct arizona *arizona, int irq, char *name,
			   irq_handler_t handler, void *data)
{
	irq = FUNC0(arizona, irq);
	if (irq < 0)
		return irq;

	return FUNC1(irq, NULL, handler, IRQF_ONESHOT,
				    name, data);
}