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
struct gru_thread_state {int /*<<< orphan*/  ts_dsr_au_count; int /*<<< orphan*/  ts_dsr_map; int /*<<< orphan*/  ts_cbr_idx; int /*<<< orphan*/  ts_cbr_au_count; int /*<<< orphan*/  ts_cbr_map; } ;
struct gru_state {int /*<<< orphan*/  gs_active_contexts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gru_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gru_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct gru_state *gru,
				  struct gru_thread_state *gts)
{
	gru->gs_active_contexts++;
	gts->ts_cbr_map =
	    FUNC0(gru, gts->ts_cbr_au_count,
				     gts->ts_cbr_idx);
	gts->ts_dsr_map =
	    FUNC1(gru, gts->ts_dsr_au_count, NULL);
}