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
struct gru_blade_state {int /*<<< orphan*/  bs_kgts_sema; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct gru_blade_state** gru_base ; 
 int /*<<< orphan*/  unlock_kernel_context ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(int blade_id)
{
	struct gru_blade_state *bs;

	bs = gru_base[blade_id];
	FUNC1(&bs->bs_kgts_sema);
	FUNC0(unlock_kernel_context);
}