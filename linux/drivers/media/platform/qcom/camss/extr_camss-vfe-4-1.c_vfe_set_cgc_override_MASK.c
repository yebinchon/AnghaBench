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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct vfe_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VFE_0_CGC_OVERRIDE_1 ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct vfe_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vfe_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(struct vfe_device *vfe, u8 wm, u8 enable)
{
	u32 val = FUNC0(wm);

	if (enable)
		FUNC2(vfe, VFE_0_CGC_OVERRIDE_1, val);
	else
		FUNC1(vfe, VFE_0_CGC_OVERRIDE_1, val);

	FUNC3();
}