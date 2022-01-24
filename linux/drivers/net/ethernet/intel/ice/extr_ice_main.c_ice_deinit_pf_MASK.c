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
struct ice_pf {int /*<<< orphan*/ * avail_rxqs; int /*<<< orphan*/ * avail_txqs; int /*<<< orphan*/  avail_q_mutex; int /*<<< orphan*/  sw_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ice_pf*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct ice_pf *pf)
{
	FUNC1(pf);
	FUNC2(&pf->sw_mutex);
	FUNC2(&pf->avail_q_mutex);

	if (pf->avail_txqs) {
		FUNC0(pf->avail_txqs);
		pf->avail_txqs = NULL;
	}

	if (pf->avail_rxqs) {
		FUNC0(pf->avail_rxqs);
		pf->avail_rxqs = NULL;
	}
}