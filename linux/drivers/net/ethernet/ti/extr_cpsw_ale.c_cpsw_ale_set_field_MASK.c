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
typedef  int u32 ;

/* Variables and functions */
 int FUNC0 (int) ; 

__attribute__((used)) static inline void FUNC1(u32 *ale_entry, u32 start, u32 bits,
				      u32 value)
{
	int idx;

	value &= FUNC0(bits);
	idx    = start / 32;
	start -= idx * 32;
	idx    = 2 - idx; /* flip */
	ale_entry[idx] &= ~(FUNC0(bits) << start);
	ale_entry[idx] |=  (value << start);
}