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
typedef  int u32 ;
struct mal_instance {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  MAL_ESR ; 
 int MAL_ESR_CIDT ; 
 int MAL_ESR_DE ; 
 int MAL_ESR_EVB ; 
 int FUNC0 (struct mal_instance*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,void*) ; 
 int /*<<< orphan*/  FUNC2 (int,void*) ; 
 int /*<<< orphan*/  FUNC3 (int,void*) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dev_instance)
{
	struct mal_instance *mal = dev_instance;
	u32 esr = FUNC0(mal, MAL_ESR);

	if (esr & MAL_ESR_EVB) {
		/* descriptor error */
		if (esr & MAL_ESR_DE) {
			if (esr & MAL_ESR_CIDT)
				return FUNC1(irq, dev_instance);
			else
				return FUNC3(irq, dev_instance);
		} else { /* SERR */
			return FUNC2(irq, dev_instance);
		}
	}
	return IRQ_HANDLED;
}