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
struct irq_avail {int offset; int range; int /*<<< orphan*/  bitmap; } ;
struct cxl {TYPE_1__* guest; } ;
struct TYPE_2__ {int irq_nranges; struct irq_avail* irq_avail; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 

__attribute__((used)) static int FUNC2(struct cxl *adapter, int irq, int len)
{
	int i, n;
	struct irq_avail *cur;

	if (len == 0)
		return -ENOENT;

	for (i = 0; i < adapter->guest->irq_nranges; i++) {
		cur = &adapter->guest->irq_avail[i];
		if (irq >= cur->offset &&
			(irq + len) <= (cur->offset + cur->range)) {
			n = irq - cur->offset;
			FUNC0(cur->bitmap, n, len);
			FUNC1("guest: release IRQs %#x->%#x\n",
				irq, irq + len - 1);
			return 0;
		}
	}
	return -ENOENT;
}