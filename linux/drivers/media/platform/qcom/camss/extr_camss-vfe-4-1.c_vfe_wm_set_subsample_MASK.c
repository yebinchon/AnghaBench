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
typedef  int /*<<< orphan*/  u8 ;
struct vfe_device {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VFE_0_BUS_IMAGE_MASTER_n_WR_IRQ_SUBSAMPLE_PATTERN_DEF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct vfe_device *vfe, u8 wm)
{
	FUNC1(VFE_0_BUS_IMAGE_MASTER_n_WR_IRQ_SUBSAMPLE_PATTERN_DEF,
		       vfe->base +
		       FUNC0(wm));
}