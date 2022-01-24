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
typedef  int u32 ;
struct TYPE_2__ {int left; int top; int width; int height; } ;
struct flite_frame {int f_width; int f_height; TYPE_1__ rect; } ;
struct fimc_lite {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ FLITE_REG_CIWDOFST ; 
 scalar_t__ FLITE_REG_CIWDOFST2 ; 
 int FLITE_REG_CIWDOFST_OFST_MASK ; 
 int FLITE_REG_CIWDOFST_WINOFSEN ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

void FUNC2(struct fimc_lite *dev, struct flite_frame *f)
{
	u32 hoff2, voff2;
	u32 cfg;

	cfg = FUNC0(dev->regs + FLITE_REG_CIWDOFST);
	cfg &= ~FLITE_REG_CIWDOFST_OFST_MASK;
	cfg |= (f->rect.left << 16) | f->rect.top;
	cfg |= FLITE_REG_CIWDOFST_WINOFSEN;
	FUNC1(cfg, dev->regs + FLITE_REG_CIWDOFST);

	hoff2 = f->f_width - f->rect.width - f->rect.left;
	voff2 = f->f_height - f->rect.height - f->rect.top;

	cfg = (hoff2 << 16) | voff2;
	FUNC1(cfg, dev->regs + FLITE_REG_CIWDOFST2);
}