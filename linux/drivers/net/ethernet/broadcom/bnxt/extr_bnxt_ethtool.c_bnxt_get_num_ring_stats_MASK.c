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
struct bnxt {int cp_nr_rings; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct bnxt*) ; 
 int /*<<< orphan*/  bnxt_ring_stats_str ; 
 int /*<<< orphan*/  bnxt_ring_sw_stats_str ; 

__attribute__((used)) static int FUNC2(struct bnxt *bp)
{
	int num_stats;

	num_stats = FUNC0(bnxt_ring_stats_str) +
		    FUNC0(bnxt_ring_sw_stats_str) +
		    FUNC1(bp);
	return num_stats * bp->cp_nr_rings;
}