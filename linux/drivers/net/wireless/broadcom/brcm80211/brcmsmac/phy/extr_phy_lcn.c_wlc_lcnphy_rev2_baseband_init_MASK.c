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
struct brcms_phy {int /*<<< orphan*/  radio_chanspec; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct brcms_phy*,int,int,int) ; 

__attribute__((used)) static void FUNC2(struct brcms_phy *pi)
{
	if (FUNC0(pi->radio_chanspec)) {
		FUNC1(pi, 0x416, (0xff << 0), 80 << 0);
		FUNC1(pi, 0x416, (0xff << 8), 80 << 8);
	}
}