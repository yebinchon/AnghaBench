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
struct hnae_ring {scalar_t__ next_to_use; scalar_t__ next_to_clean; int /*<<< orphan*/ * desc_cb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hnae_ring*) ; 
 int /*<<< orphan*/  FUNC1 (struct hnae_ring*) ; 
 scalar_t__ FUNC2 (struct hnae_ring*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct hnae_ring *ring)
{
	if (FUNC2(ring))
		FUNC0(ring);

	FUNC1(ring);
	FUNC3(ring->desc_cb);
	ring->desc_cb = NULL;
	ring->next_to_clean = 0;
	ring->next_to_use = 0;
}