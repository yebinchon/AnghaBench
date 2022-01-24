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
typedef  scalar_t__ u32 ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 scalar_t__ FUNC5 (void*) ; 

unsigned long FUNC6(u32 buf_size, u32 *phys_addr)
{
	u32 order, size;
	unsigned long virt_addr, addr;

	size = FUNC0(buf_size);
	order = FUNC3(size);
	virt_addr = FUNC2(GFP_KERNEL, order);
	addr = virt_addr;

	if (virt_addr) {
		while (size > 0) {
			FUNC1(FUNC4(addr));
			addr += PAGE_SIZE;
			size -= PAGE_SIZE;
		}
	}
	*phys_addr = (u32) FUNC5((void *) virt_addr);
	return virt_addr;
}