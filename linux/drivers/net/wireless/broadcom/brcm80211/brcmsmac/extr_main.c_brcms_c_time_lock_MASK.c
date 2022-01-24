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
struct TYPE_2__ {int /*<<< orphan*/  d11core; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MCTL_TBTTHOLD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  maccontrol ; 

__attribute__((used)) static void FUNC3(struct brcms_c_info *wlc)
{
	FUNC2(wlc->hw->d11core, FUNC0(maccontrol), MCTL_TBTTHOLD);
	/* Commit the write */
	FUNC1(wlc->hw->d11core, FUNC0(maccontrol));
}