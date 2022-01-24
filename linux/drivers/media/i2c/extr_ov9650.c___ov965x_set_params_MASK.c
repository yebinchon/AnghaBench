#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct ov965x_ctrls {TYPE_2__* light_freq; } ;
struct ov965x {scalar_t__ tslb_reg; TYPE_1__* fiv; scalar_t__ apply_frame_fmt; struct ov965x_ctrls ctrls; } ;
struct TYPE_4__ {int /*<<< orphan*/  val; } ;
struct TYPE_3__ {scalar_t__ clkrc_div; } ;

/* Variables and functions */
 scalar_t__ COM11_BANDING ; 
 scalar_t__ DEF_CLKRC ; 
 int /*<<< orphan*/  REG_CLKRC ; 
 int /*<<< orphan*/  REG_COM11 ; 
 int /*<<< orphan*/  REG_TSLB ; 
 scalar_t__ TSLB_YUYV_MASK ; 
 int FUNC0 (struct ov965x*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC1 (struct ov965x*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ov965x*) ; 
 int FUNC3 (struct ov965x*) ; 
 int FUNC4 (struct ov965x*) ; 
 int FUNC5 (struct ov965x*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct ov965x *ov965x)
{
	struct ov965x_ctrls *ctrls = &ov965x->ctrls;
	int ret = 0;
	u8 reg;

	if (ov965x->apply_frame_fmt) {
		reg = DEF_CLKRC + ov965x->fiv->clkrc_div;
		ret = FUNC5(ov965x, REG_CLKRC, reg);
		if (ret < 0)
			return ret;
		ret = FUNC4(ov965x);
		if (ret < 0)
			return ret;
		ret = FUNC0(ov965x, REG_TSLB, &reg);
		if (ret < 0)
			return ret;
		reg &= ~TSLB_YUYV_MASK;
		reg |= ov965x->tslb_reg;
		ret = FUNC5(ov965x, REG_TSLB, reg);
		if (ret < 0)
			return ret;
	}
	ret = FUNC3(ov965x);
	if (ret < 0)
		return ret;
	ret = FUNC2(ov965x);
	if (ret < 0)
		return ret;
	/*
	 * Select manual banding filter, the filter will
	 * be enabled further if required.
	 */
	ret = FUNC0(ov965x, REG_COM11, &reg);
	if (!ret)
		reg |= COM11_BANDING;
	ret = FUNC5(ov965x, REG_COM11, reg);
	if (ret < 0)
		return ret;
	/*
	 * Banding filter (REG_MBD value) needs to match selected
	 * resolution and frame rate, so it's always updated here.
	 */
	return FUNC1(ov965x, ctrls->light_freq->val);
}