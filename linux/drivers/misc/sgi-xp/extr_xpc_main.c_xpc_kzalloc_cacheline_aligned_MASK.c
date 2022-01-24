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
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 size_t L1_CACHE_BYTES ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (size_t,int /*<<< orphan*/ ) ; 

void *
FUNC3(size_t size, gfp_t flags, void **base)
{
	/* see if kzalloc will give us cachline aligned memory by default */
	*base = FUNC2(size, flags);
	if (*base == NULL)
		return NULL;

	if ((u64)*base == FUNC0((u64)*base))
		return *base;

	FUNC1(*base);

	/* nope, we'll have to do it ourselves */
	*base = FUNC2(size + L1_CACHE_BYTES, flags);
	if (*base == NULL)
		return NULL;

	return (void *)FUNC0((u64)*base);
}