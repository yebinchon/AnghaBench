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
typedef  int /*<<< orphan*/  u32 ;
struct fimc_lite {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ FLITE_REG_CIGENERAL ; 
 int /*<<< orphan*/  FLITE_REG_CIGENERAL_CAM_B ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct fimc_lite *dev, int id)
{
	u32 cfg = FUNC0(dev->regs + FLITE_REG_CIGENERAL);
	if (id == 0)
		cfg &= ~FLITE_REG_CIGENERAL_CAM_B;
	else
		cfg |= FLITE_REG_CIGENERAL_CAM_B;
	FUNC1(cfg, dev->regs + FLITE_REG_CIGENERAL);
}