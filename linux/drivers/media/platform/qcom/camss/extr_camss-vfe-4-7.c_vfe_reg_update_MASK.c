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
struct vfe_device {scalar_t__ base; int /*<<< orphan*/  reg_update; } ;
typedef  enum vfe_line_id { ____Placeholder_vfe_line_id } vfe_line_id ;

/* Variables and functions */
 scalar_t__ VFE_0_REG_UPDATE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct vfe_device *vfe, enum vfe_line_id line_id)
{
	vfe->reg_update |= FUNC0(line_id);
	FUNC1();
	FUNC2(vfe->reg_update, vfe->base + VFE_0_REG_UPDATE);
	FUNC1();
}