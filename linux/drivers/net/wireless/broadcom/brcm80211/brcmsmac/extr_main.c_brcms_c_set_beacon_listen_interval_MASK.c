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
typedef  int /*<<< orphan*/  u8 ;
struct brcms_c_info {TYPE_1__* pub; int /*<<< orphan*/  bcn_li_bcn; } ;
struct TYPE_2__ {scalar_t__ up; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct brcms_c_info*) ; 

void FUNC1(struct brcms_c_info *wlc, u8 interval)
{
	wlc->bcn_li_bcn = interval;
	if (wlc->pub->up)
		FUNC0(wlc);
}