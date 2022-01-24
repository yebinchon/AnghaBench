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
typedef  unsigned long long u64 ;
typedef  scalar_t__ u32 ;
struct dma_extended_desc {int /*<<< orphan*/  des7; int /*<<< orphan*/  des6; } ;
struct dma_desc {int /*<<< orphan*/  des3; int /*<<< orphan*/  des2; } ;

/* Variables and functions */
 unsigned long long FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(void *desc, u32 ats, u64 *ts)
{
	u64 ns;

	if (ats) {
		struct dma_extended_desc *p = (struct dma_extended_desc *)desc;
		ns = FUNC0(p->des6);
		/* convert high/sec time stamp value to nanosecond */
		ns += FUNC0(p->des7) * 1000000000ULL;
	} else {
		struct dma_desc *p = (struct dma_desc *)desc;
		ns = FUNC0(p->des2);
		ns += FUNC0(p->des3) * 1000000000ULL;
	}

	*ts = ns;
}