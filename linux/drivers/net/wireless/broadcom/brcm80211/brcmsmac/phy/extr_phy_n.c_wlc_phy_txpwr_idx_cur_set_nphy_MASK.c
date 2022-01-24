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
struct TYPE_2__ {int /*<<< orphan*/  phy_rev; } ;
struct brcms_phy {TYPE_1__ pubpi; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct brcms_phy*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct brcms_phy *pi, u8 idx0, u8 idx1)
{
	FUNC1(pi, 0x1e7, (0x7f << 0), idx0);

	if (FUNC0(pi->pubpi.phy_rev, 1))
		FUNC1(pi, 0x222, (0xff << 0), idx1);
}