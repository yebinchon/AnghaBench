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
struct brcms_c_info {TYPE_3__* band; TYPE_2__* pub; TYPE_1__* stf; } ;
typedef  scalar_t__ s8 ;
struct TYPE_6__ {int /*<<< orphan*/  pi; } ;
struct TYPE_5__ {scalar_t__ up; } ;
struct TYPE_4__ {scalar_t__ ldpc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct brcms_c_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct brcms_c_info*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct brcms_c_info *wlc, s8 val)
{
	wlc->stf->ldpc = val;

	if (wlc->pub->up) {
		FUNC0(wlc);
		FUNC1(wlc, true);
		FUNC2(wlc->band->pi, (val ? true : false));
	}
}