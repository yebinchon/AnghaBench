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
struct i40e_pf {int stat_offsets_loaded; scalar_t__ hw_csum_rx_error; TYPE_1__** veb; int /*<<< orphan*/  stats_offsets; int /*<<< orphan*/  stats; } ;
struct TYPE_2__ {int stat_offsets_loaded; int /*<<< orphan*/  tc_stats_offsets; int /*<<< orphan*/  tc_stats; int /*<<< orphan*/  stats_offsets; int /*<<< orphan*/  stats; } ;

/* Variables and functions */
 int I40E_MAX_VEB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

void FUNC1(struct i40e_pf *pf)
{
	int i;

	FUNC0(&pf->stats, 0, sizeof(pf->stats));
	FUNC0(&pf->stats_offsets, 0, sizeof(pf->stats_offsets));
	pf->stat_offsets_loaded = false;

	for (i = 0; i < I40E_MAX_VEB; i++) {
		if (pf->veb[i]) {
			FUNC0(&pf->veb[i]->stats, 0,
			       sizeof(pf->veb[i]->stats));
			FUNC0(&pf->veb[i]->stats_offsets, 0,
			       sizeof(pf->veb[i]->stats_offsets));
			FUNC0(&pf->veb[i]->tc_stats, 0,
			       sizeof(pf->veb[i]->tc_stats));
			FUNC0(&pf->veb[i]->tc_stats_offsets, 0,
			       sizeof(pf->veb[i]->tc_stats_offsets));
			pf->veb[i]->stat_offsets_loaded = false;
		}
	}
	pf->hw_csum_rx_error = 0;
}