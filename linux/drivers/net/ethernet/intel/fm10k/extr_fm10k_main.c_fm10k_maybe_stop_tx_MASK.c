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
typedef  scalar_t__ u16 ;
struct fm10k_ring {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct fm10k_ring*,scalar_t__) ; 
 scalar_t__ FUNC1 (struct fm10k_ring*) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static inline int FUNC3(struct fm10k_ring *tx_ring, u16 size)
{
	if (FUNC2(FUNC1(tx_ring) >= size))
		return 0;
	return FUNC0(tx_ring, size);
}