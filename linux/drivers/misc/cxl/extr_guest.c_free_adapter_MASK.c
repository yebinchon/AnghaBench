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
struct irq_avail {int irq_nranges; struct irq_avail* guest; struct irq_avail* status; struct irq_avail* irq_avail; struct irq_avail* bitmap; } ;
struct cxl {int irq_nranges; struct cxl* guest; struct cxl* status; struct cxl* irq_avail; struct cxl* bitmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct irq_avail*) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_avail*) ; 

__attribute__((used)) static void FUNC2(struct cxl *adapter)
{
	struct irq_avail *cur;
	int i;

	if (adapter->guest) {
		if (adapter->guest->irq_avail) {
			for (i = 0; i < adapter->guest->irq_nranges; i++) {
				cur = &adapter->guest->irq_avail[i];
				FUNC1(cur->bitmap);
			}
			FUNC1(adapter->guest->irq_avail);
		}
		FUNC1(adapter->guest->status);
		FUNC1(adapter->guest);
	}
	FUNC0(adapter);
	FUNC1(adapter);
}