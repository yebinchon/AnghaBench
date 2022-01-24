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
struct ppp {int flags; int /*<<< orphan*/ * rc_state; struct compressor* rcomp; int /*<<< orphan*/  rstate; int /*<<< orphan*/ * xc_state; struct compressor* xcomp; int /*<<< orphan*/  xstate; } ;
struct compressor {int /*<<< orphan*/  owner; int /*<<< orphan*/  (* decomp_free ) (void*) ;int /*<<< orphan*/  (* comp_free ) (void*) ;} ;

/* Variables and functions */
 int SC_CCP_OPEN ; 
 int SC_CCP_UP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ppp*) ; 
 int /*<<< orphan*/  FUNC2 (struct ppp*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 

__attribute__((used)) static void
FUNC5(struct ppp *ppp)
{
	void *xstate, *rstate;
	struct compressor *xcomp, *rcomp;

	FUNC1(ppp);
	ppp->flags &= ~(SC_CCP_OPEN | SC_CCP_UP);
	ppp->xstate = 0;
	xcomp = ppp->xcomp;
	xstate = ppp->xc_state;
	ppp->xc_state = NULL;
	ppp->rstate = 0;
	rcomp = ppp->rcomp;
	rstate = ppp->rc_state;
	ppp->rc_state = NULL;
	FUNC2(ppp);

	if (xstate) {
		xcomp->comp_free(xstate);
		FUNC0(xcomp->owner);
	}
	if (rstate) {
		rcomp->decomp_free(rstate);
		FUNC0(rcomp->owner);
	}
}