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
typedef  int u8 ;
typedef  int u32 ;
struct vfe_output {unsigned int wm_num; int* wm_idx; } ;
struct vfe_device {TYPE_1__* line; } ;
typedef  enum vfe_line_id { ____Placeholder_vfe_line_id } vfe_line_id ;
struct TYPE_2__ {struct vfe_output output; } ;

/* Variables and functions */
 int /*<<< orphan*/  VFE_0_IRQ_COMPOSITE_MASK_0 ; 
 int /*<<< orphan*/  VFE_0_IRQ_MASK_0 ; 
 int VFE_0_IRQ_MASK_0_CAMIF_EOF ; 
 int VFE_0_IRQ_MASK_0_CAMIF_SOF ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  VFE_0_IRQ_MASK_1 ; 
 int VFE_0_IRQ_MASK_1_CAMIF_ERROR ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct vfe_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct vfe_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct vfe_device *vfe, u8 comp,
				    enum vfe_line_id line_id, u8 enable)
{
	struct vfe_output *output = &vfe->line[line_id].output;
	unsigned int i;
	u32 irq_en0;
	u32 irq_en1;
	u32 comp_mask = 0;

	irq_en0 = VFE_0_IRQ_MASK_0_CAMIF_SOF;
	irq_en0 |= VFE_0_IRQ_MASK_0_CAMIF_EOF;
	irq_en0 |= FUNC0(comp);
	irq_en0 |= FUNC1(line_id);
	irq_en1 = VFE_0_IRQ_MASK_1_CAMIF_ERROR;
	for (i = 0; i < output->wm_num; i++) {
		irq_en1 |= FUNC2(
							output->wm_idx[i]);
		comp_mask |= (1 << output->wm_idx[i]) << comp * 8;
	}

	if (enable) {
		FUNC4(vfe, VFE_0_IRQ_MASK_0, irq_en0);
		FUNC4(vfe, VFE_0_IRQ_MASK_1, irq_en1);
		FUNC4(vfe, VFE_0_IRQ_COMPOSITE_MASK_0, comp_mask);
	} else {
		FUNC3(vfe, VFE_0_IRQ_MASK_0, irq_en0);
		FUNC3(vfe, VFE_0_IRQ_MASK_1, irq_en1);
		FUNC3(vfe, VFE_0_IRQ_COMPOSITE_MASK_0, comp_mask);
	}
}