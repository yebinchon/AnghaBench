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
struct b43legacy_dmaring {int tx; int nr_slots; int current_slot; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43legacy_dmaring*,int*) ; 
 int FUNC2 (struct b43legacy_dmaring*,int) ; 
 int FUNC3 (struct b43legacy_dmaring*) ; 
 int /*<<< orphan*/  FUNC4 (struct b43legacy_dmaring*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct b43legacy_dmaring*,int) ; 

void FUNC6(struct b43legacy_dmaring *ring)
{
	int slot;
	int current_slot;
	int used_slots = 0;

	FUNC0(ring->tx);
	current_slot = FUNC3(ring);
	FUNC0(!(current_slot >= 0 && current_slot <
			   ring->nr_slots));

	slot = ring->current_slot;
	for (; slot != current_slot; slot = FUNC2(ring, slot)) {
		FUNC1(ring, &slot);
		FUNC5(ring, ++used_slots);
	}
	FUNC4(ring, slot);
	ring->current_slot = slot;
}