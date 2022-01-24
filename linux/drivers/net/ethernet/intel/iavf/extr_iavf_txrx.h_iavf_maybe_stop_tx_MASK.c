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
struct iavf_ring {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct iavf_ring*) ; 
 int FUNC1 (struct iavf_ring*,int) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static inline int FUNC3(struct iavf_ring *tx_ring, int size)
{
	if (FUNC2(FUNC0(tx_ring) >= size))
		return 0;
	return FUNC1(tx_ring, size);
}