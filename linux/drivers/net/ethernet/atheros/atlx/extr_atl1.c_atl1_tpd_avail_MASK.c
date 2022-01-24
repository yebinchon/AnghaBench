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
struct atl1_tpd_ring {scalar_t__ count; int /*<<< orphan*/  next_to_use; int /*<<< orphan*/  next_to_clean; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static u16 FUNC1(struct atl1_tpd_ring *tpd_ring)
{
	u16 next_to_clean = FUNC0(&tpd_ring->next_to_clean);
	u16 next_to_use = FUNC0(&tpd_ring->next_to_use);
	return (next_to_clean > next_to_use) ?
		next_to_clean - next_to_use - 1 :
		tpd_ring->count + next_to_clean - next_to_use - 1;
}