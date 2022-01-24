#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct TYPE_2__ {int /*<<< orphan*/  sub_ns; int /*<<< orphan*/  ns; } ;
struct macb {TYPE_1__ tsu_incr; int /*<<< orphan*/  tsu_rate; } ;

/* Variables and functions */
 scalar_t__ GEM_SUBNSINCR_SIZE ; 
 int /*<<< orphan*/  NSEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static void FUNC2(struct macb *bp)
{
	u32 rem = 0;
	u64 adj;

	bp->tsu_incr.ns = FUNC1(NSEC_PER_SEC, bp->tsu_rate, &rem);
	if (rem) {
		adj = rem;
		adj <<= GEM_SUBNSINCR_SIZE;
		bp->tsu_incr.sub_ns = FUNC0(adj, bp->tsu_rate);
	} else {
		bp->tsu_incr.sub_ns = 0;
	}
}