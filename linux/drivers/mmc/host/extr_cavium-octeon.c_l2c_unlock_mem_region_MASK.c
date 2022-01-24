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

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ CVMX_CACHE_LINE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static void FUNC2(u64 start, u64 len)
{
	u64 end;

	/* Round start/end to cache line boundaries */
	end = FUNC0(start + len - 1, CVMX_CACHE_LINE_SIZE);
	start = FUNC0(start, CVMX_CACHE_LINE_SIZE);

	while (start <= end) {
		FUNC1(start);
		start += CVMX_CACHE_LINE_SIZE;
	}
}