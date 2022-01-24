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
struct dma_desc {int /*<<< orphan*/  des1; } ;

/* Variables and functions */
 int BUF_SIZE_16KiB ; 
 int BUF_SIZE_8KiB ; 
 int ERDES1_BUFFER2_SIZE_MASK ; 
 int ERDES1_BUFFER2_SIZE_SHIFT ; 
 int ERDES1_END_RING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static inline void FUNC1(struct dma_desc *p, int end,
					   int bfsize)
{
	if (bfsize == BUF_SIZE_16KiB)
		p->des1 |= FUNC0((BUF_SIZE_8KiB
				<< ERDES1_BUFFER2_SIZE_SHIFT)
			   & ERDES1_BUFFER2_SIZE_MASK);

	if (end)
		p->des1 |= FUNC0(ERDES1_END_RING);
}