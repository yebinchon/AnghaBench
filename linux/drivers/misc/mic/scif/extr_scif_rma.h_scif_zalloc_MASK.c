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

/* Variables and functions */
 size_t FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int GFP_KERNEL ; 
 scalar_t__ MAX_ORDER ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int __GFP_ZERO ; 
 scalar_t__ FUNC1 (int,scalar_t__) ; 
 scalar_t__ FUNC2 (size_t) ; 
 void* FUNC3 (size_t) ; 

__attribute__((used)) static inline void *FUNC4(size_t size)
{
	void *ret = NULL;
	size_t align = FUNC0(size, PAGE_SIZE);

	if (align && FUNC2(align) < MAX_ORDER)
		ret = (void *)FUNC1(GFP_KERNEL | __GFP_ZERO,
					       FUNC2(align));
	return ret ? ret : FUNC3(align);
}