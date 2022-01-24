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
typedef  int u64 ;
struct rx_ring_info {int dummy; } ;

/* Variables and functions */
 int MAX_RBR_RING_SIZE ; 
 int PAGE_SHIFT ; 
 int FUNC0 (int) ; 

__attribute__((used)) static unsigned int FUNC1(struct rx_ring_info *rp, u64 a)
{
	a >>= PAGE_SHIFT;
	a ^= (a >> FUNC0(MAX_RBR_RING_SIZE));

	return a & (MAX_RBR_RING_SIZE - 1);
}