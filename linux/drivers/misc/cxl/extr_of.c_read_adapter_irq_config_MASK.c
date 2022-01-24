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
struct irq_avail {scalar_t__ offset; scalar_t__ range; struct irq_avail* bitmap; } ;
struct device_node {int dummy; } ;
struct cxl {TYPE_1__* guest; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {scalar_t__ irq_base_offset; int irq_nranges; struct irq_avail* irq_avail; int /*<<< orphan*/  irq_alloc_lock; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC1 (int /*<<< orphan*/  const) ; 
 scalar_t__ cxl_verbose ; 
 void* FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_avail*) ; 
 int /*<<< orphan*/ * FUNC4 (struct device_node*,char*,int*) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct cxl *adapter, struct device_node *np)
{
	const __be32 *ranges;
	int len, nranges, i;
	struct irq_avail *cur;

	ranges = FUNC4(np, "interrupt-ranges", &len);
	if (ranges == NULL || len < (2 * sizeof(int)))
		return -EINVAL;

	/*
	 * encoded array of two cells per entry, each cell encoded as
	 * with encode-int
	 */
	nranges = len / (2 * sizeof(int));
	if (nranges == 0 || (nranges * 2 * sizeof(int)) != len)
		return -EINVAL;

	adapter->guest->irq_avail = FUNC2(nranges, sizeof(struct irq_avail),
					    GFP_KERNEL);
	if (adapter->guest->irq_avail == NULL)
		return -ENOMEM;

	adapter->guest->irq_base_offset = FUNC1(ranges[0]);
	for (i = 0; i < nranges; i++) {
		cur = &adapter->guest->irq_avail[i];
		cur->offset = FUNC1(ranges[i * 2]);
		cur->range  = FUNC1(ranges[i * 2 + 1]);
		cur->bitmap = FUNC2(FUNC0(cur->range),
				sizeof(*cur->bitmap), GFP_KERNEL);
		if (cur->bitmap == NULL)
			goto err;
		if (cur->offset < adapter->guest->irq_base_offset)
			adapter->guest->irq_base_offset = cur->offset;
		if (cxl_verbose)
			FUNC5("available IRQ range: %#lx-%#lx (%lu)\n",
				cur->offset, cur->offset + cur->range - 1,
				cur->range);
	}
	adapter->guest->irq_nranges = nranges;
	FUNC6(&adapter->guest->irq_alloc_lock);

	return 0;
err:
	for (i--; i >= 0; i--) {
		cur = &adapter->guest->irq_avail[i];
		FUNC3(cur->bitmap);
	}
	FUNC3(adapter->guest->irq_avail);
	adapter->guest->irq_avail = NULL;
	return -ENOMEM;
}