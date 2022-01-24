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
struct brcms_c_info {TYPE_1__* hw; } ;
struct TYPE_2__ {scalar_t__* di; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct brcms_c_info *wlc)
{
	int i;
	int pending = 0;

	for (i = 0; i < FUNC0(wlc->hw->di); i++)
		if (wlc->hw->di[i])
			pending += FUNC1(wlc->hw->di[i]);
	return pending;
}