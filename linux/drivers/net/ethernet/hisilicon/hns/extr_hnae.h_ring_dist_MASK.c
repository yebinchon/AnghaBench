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
struct hnae_ring {int desc_num; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hnae_ring*,int) ; 

__attribute__((used)) static inline int FUNC1(struct hnae_ring *ring, int begin, int end)
{
	FUNC0(ring, begin);
	FUNC0(ring, end);

	return (end - begin + ring->desc_num) % ring->desc_num;
}