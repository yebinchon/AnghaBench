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
struct hnae_ring {scalar_t__ next_to_use; scalar_t__ next_to_clean; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hnae_ring*,scalar_t__) ; 

__attribute__((used)) static inline int FUNC1(struct hnae_ring *ring)
{
	FUNC0(ring, ring->next_to_use);
	FUNC0(ring, ring->next_to_clean);

	return ring->next_to_use == ring->next_to_clean;
}