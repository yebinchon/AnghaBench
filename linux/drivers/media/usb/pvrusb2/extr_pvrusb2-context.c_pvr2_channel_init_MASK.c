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
struct pvr2_context {struct pvr2_channel* mc_last; struct pvr2_channel* mc_first; int /*<<< orphan*/  hdw; } ;
struct pvr2_channel {struct pvr2_channel* mc_next; struct pvr2_channel* mc_prev; struct pvr2_context* mc_head; int /*<<< orphan*/  hdw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pvr2_context*) ; 
 int /*<<< orphan*/  FUNC1 (struct pvr2_context*) ; 

void FUNC2(struct pvr2_channel *cp,struct pvr2_context *mp)
{
	FUNC0(mp);
	cp->hdw = mp->hdw;
	cp->mc_head = mp;
	cp->mc_next = NULL;
	cp->mc_prev = mp->mc_last;
	if (mp->mc_last) {
		mp->mc_last->mc_next = cp;
	} else {
		mp->mc_first = cp;
	}
	mp->mc_last = cp;
	FUNC1(mp);
}