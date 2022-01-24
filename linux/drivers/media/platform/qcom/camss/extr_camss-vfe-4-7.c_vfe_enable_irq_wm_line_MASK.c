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
typedef  int u32 ;
struct vfe_device {int dummy; } ;
typedef  enum vfe_line_id { ____Placeholder_vfe_line_id } vfe_line_id ;

/* Variables and functions */
 int /*<<< orphan*/  VFE_0_IRQ_MASK_0 ; 
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  VFE_0_IRQ_MASK_1 ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct vfe_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct vfe_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct vfe_device *vfe, u8 wm,
				   enum vfe_line_id line_id, u8 enable)
{
	u32 irq_en0 = FUNC0(wm) |
		      FUNC1(line_id);
	u32 irq_en1 = FUNC2(wm) |
		      FUNC3(line_id);

	if (enable) {
		FUNC5(vfe, VFE_0_IRQ_MASK_0, irq_en0);
		FUNC5(vfe, VFE_0_IRQ_MASK_1, irq_en1);
	} else {
		FUNC4(vfe, VFE_0_IRQ_MASK_0, irq_en0);
		FUNC4(vfe, VFE_0_IRQ_MASK_1, irq_en1);
	}
}