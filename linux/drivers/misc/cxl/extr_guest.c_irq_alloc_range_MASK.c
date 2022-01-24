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
struct irq_avail {int range; int offset; int /*<<< orphan*/  bitmap; } ;
struct cxl {TYPE_1__* guest; } ;
struct TYPE_2__ {int irq_nranges; struct irq_avail* irq_avail; } ;

/* Variables and functions */
 int ENOSPC ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 

__attribute__((used)) static int FUNC3(struct cxl *adapter, int len, int *irq)
{
	int i, n;
	struct irq_avail *cur;

	for (i = 0; i < adapter->guest->irq_nranges; i++) {
		cur = &adapter->guest->irq_avail[i];
		n = FUNC0(cur->bitmap, cur->range,
					0, len, 0);
		if (n < cur->range) {
			FUNC1(cur->bitmap, n, len);
			*irq = cur->offset + n;
			FUNC2("guest: allocate IRQs %#x->%#x\n",
				*irq, *irq + len - 1);

			return 0;
		}
	}
	return -ENOSPC;
}