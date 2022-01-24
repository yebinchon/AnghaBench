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
typedef  int u32 ;
struct vfe_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VFE_0_IRQ_MASK_0 ; 
 int VFE_0_IRQ_MASK_0_RESET_ACK ; 
 int /*<<< orphan*/  VFE_0_IRQ_MASK_1 ; 
 int VFE_0_IRQ_MASK_1_BUS_BDG_HALT_ACK ; 
 int VFE_0_IRQ_MASK_1_VIOLATION ; 
 int /*<<< orphan*/  FUNC0 (struct vfe_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(struct vfe_device *vfe)
{
	u32 irq_en0 = VFE_0_IRQ_MASK_0_RESET_ACK;
	u32 irq_en1 = VFE_0_IRQ_MASK_1_VIOLATION |
		      VFE_0_IRQ_MASK_1_BUS_BDG_HALT_ACK;

	FUNC0(vfe, VFE_0_IRQ_MASK_0, irq_en0);
	FUNC0(vfe, VFE_0_IRQ_MASK_1, irq_en1);
}