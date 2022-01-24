#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint ;
struct brcms_c_rateset {scalar_t__ count; } ;
struct brcms_c_info {TYPE_4__** bandstate; TYPE_3__* default_bss; TYPE_2__* stf; TYPE_1__* band; } ;
struct TYPE_8__ {struct brcms_c_rateset defrateset; int /*<<< orphan*/  hw_rateset; } ;
struct TYPE_7__ {struct brcms_c_rateset rateset; } ;
struct TYPE_6__ {int /*<<< orphan*/  txstreams; } ;
struct TYPE_5__ {size_t bandunit; } ;

/* Variables and functions */
 scalar_t__ BRCMS_NUMRATES ; 
 int EBADE ; 
 int EINVAL ; 
 size_t FUNC0 (struct brcms_c_info*) ; 
 scalar_t__ FUNC1 (struct brcms_c_rateset*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct brcms_c_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct brcms_c_rateset*,struct brcms_c_rateset*,int) ; 

__attribute__((used)) static int
FUNC4(struct brcms_c_info *wlc,
			     struct brcms_c_rateset *rs_arg)
{
	struct brcms_c_rateset rs, new;
	uint bandunit;

	FUNC3(&rs, rs_arg, sizeof(struct brcms_c_rateset));

	/* check for bad count value */
	if ((rs.count == 0) || (rs.count > BRCMS_NUMRATES))
		return -EINVAL;

	/* try the current band */
	bandunit = wlc->band->bandunit;
	FUNC3(&new, &rs, sizeof(struct brcms_c_rateset));
	if (FUNC1
	    (&new, &wlc->bandstate[bandunit]->hw_rateset, true,
	     wlc->stf->txstreams))
		goto good;

	/* try the other band */
	if (FUNC2(wlc)) {
		bandunit = FUNC0(wlc);
		FUNC3(&new, &rs, sizeof(struct brcms_c_rateset));
		if (FUNC1(&new,
						       &wlc->
						       bandstate[bandunit]->
						       hw_rateset, true,
						       wlc->stf->txstreams))
			goto good;
	}

	return -EBADE;

 good:
	/* apply new rateset */
	FUNC3(&wlc->default_bss->rateset, &new,
	       sizeof(struct brcms_c_rateset));
	FUNC3(&wlc->bandstate[bandunit]->defrateset, &new,
	       sizeof(struct brcms_c_rateset));
	return 0;
}