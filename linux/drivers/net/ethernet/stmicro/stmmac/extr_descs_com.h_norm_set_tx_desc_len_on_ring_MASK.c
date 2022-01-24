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
 int BUF_SIZE_2KiB ; 
 int TDES1_BUFFER1_SIZE_MASK ; 
 int TDES1_BUFFER2_SIZE_MASK ; 
 int TDES1_BUFFER2_SIZE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static inline void FUNC2(struct dma_desc *p, int len)
{
	if (FUNC1(len > BUF_SIZE_2KiB)) {
		unsigned int buffer1 = (BUF_SIZE_2KiB - 1)
					& TDES1_BUFFER1_SIZE_MASK;
		p->des1 |= FUNC0((((len - buffer1)
					<< TDES1_BUFFER2_SIZE_SHIFT)
				& TDES1_BUFFER2_SIZE_MASK) | buffer1);
	} else
		p->des1 |= FUNC0((len & TDES1_BUFFER1_SIZE_MASK));
}