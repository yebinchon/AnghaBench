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
struct gru_blade_state {int /*<<< orphan*/  bs_kgts_sema; int /*<<< orphan*/ * bs_async_wq; scalar_t__ bs_async_cbrs; scalar_t__ bs_async_dsr_bytes; } ;

/* Variables and functions */
 struct gru_blade_state* FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(unsigned long han)
{
	struct gru_blade_state *bs = FUNC0(han);

	FUNC1(&bs->bs_kgts_sema);
	bs->bs_async_dsr_bytes = 0;
	bs->bs_async_cbrs = 0;
	bs->bs_async_wq = NULL;
	FUNC2(&bs->bs_kgts_sema);
}