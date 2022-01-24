#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
typedef  int u32 ;
struct pg_help_data {int dummy; } ;
struct dcbx_ets_feature {int /*<<< orphan*/  pg_bw_tbl; } ;
struct cos_help_data {TYPE_3__* data; } ;
struct TYPE_4__ {int* traffic_type_priority; } ;
struct TYPE_5__ {TYPE_1__ app; } ;
struct bnx2x {TYPE_2__ dcbx_port_params; } ;
struct TYPE_6__ {int pri_join_mask; int /*<<< orphan*/  strict; int /*<<< orphan*/  pausable; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2X_DCBX_STRICT_COS_HIGHEST ; 
 size_t DCBX_MAX_NUM_PG_BW_ENTRIES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC1 (struct bnx2x*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,int) ; 
 size_t LLFC_DRIVER_TRAFFIC_TYPE_MAX ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*,struct cos_help_data*,int*,struct dcbx_ets_feature*) ; 

__attribute__((used)) static void FUNC5(
			      struct bnx2x		*bp,
			      struct pg_help_data	*pg_help_data,
			      struct dcbx_ets_feature	*ets,
			      struct cos_help_data	*cos_data,
			      u32			*pg_pri_orginal_spread,
			      u32			pri_join_mask,
			      u8			num_of_dif_pri)
{
	u8 i = 0;
	u32 pri_tested = 0;
	u8 entry = 0;
	u8 pg_entry = 0;
	bool b_found_strict = false;
	u8 num_of_pri = LLFC_DRIVER_TRAFFIC_TYPE_MAX;

	cos_data->data[0].pri_join_mask = cos_data->data[1].pri_join_mask = 0;
	/* If there are both pauseable and non-pauseable priorities,
	 * the pauseable priorities go to the first queue and the
	 * non-pauseable priorities go to the second queue.
	 */
	if (FUNC1(bp, pri_join_mask))
		FUNC4(bp,
				cos_data, pg_pri_orginal_spread, ets);
	else {
		/* If two BW-limited PG-s were combined to one queue,
		 * the BW is their sum.
		 *
		 * If there are only pauseable priorities or only non-pauseable,
		 * and there are both BW-limited and non-BW-limited PG-s,
		 * the BW-limited PG/s go to one queue and the non-BW-limited
		 * PG/s go to the second queue.
		 *
		 * If there are only pauseable priorities or only non-pauseable
		 * and all are BW limited, then	two priorities go to the first
		 * queue and one priority goes to the second queue.
		 *
		 * We will join this two cases:
		 * if one is BW limited it will go to the second queue
		 * otherwise the last priority will get it
		 */

		cos_data->data[0].pausable = cos_data->data[1].pausable =
			FUNC2(bp, pri_join_mask);

		for (i = 0 ; i < num_of_pri; i++) {
			pri_tested = 1 << bp->dcbx_port_params.
				app.traffic_type_priority[i];
			pg_entry = (u8)pg_pri_orginal_spread[bp->
				dcbx_port_params.app.traffic_type_priority[i]];

			if (pg_entry < DCBX_MAX_NUM_PG_BW_ENTRIES) {
				entry = 0;

				if (i == (num_of_pri-1) &&
				    false == b_found_strict)
					/* last entry will be handled separately
					 * If no priority is strict than last
					 * entry goes to last queue.
					 */
					entry = 1;
				cos_data->data[entry].pri_join_mask |=
								pri_tested;
				FUNC3(bp,
					&cos_data->data[entry],
					FUNC0(ets->pg_bw_tbl,
						       pg_entry));
			} else {
				b_found_strict = true;
				cos_data->data[1].pri_join_mask |= pri_tested;
				/* If we join a group and one is strict
				 * than the bw rules
				 */
				cos_data->data[1].strict =
					BNX2X_DCBX_STRICT_COS_HIGHEST;
			}
		}
	}
}