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
struct sh_vou_pdata {int flags; int /*<<< orphan*/  bus_fmt; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct sh_vou_device {int /*<<< orphan*/  pix; TYPE_1__ v4l2_dev; struct sh_vou_pdata* pdata; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int SH_VOU_HSYNC_LOW ; 
 int SH_VOU_PCLK_FALLING ; 
 int SH_VOU_VSYNC_LOW ; 
 int /*<<< orphan*/  VOUCR ; 
 int /*<<< orphan*/  VOUIR ; 
 int /*<<< orphan*/  VOUMSR ; 
 int /*<<< orphan*/  VOURCR ; 
 int /*<<< orphan*/  VOUSRR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sh_vou_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sh_vou_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sh_vou_device*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sh_vou_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sh_vou_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct sh_vou_device *vou_dev)
{
	struct sh_vou_pdata *pdata = vou_dev->pdata;
	u32 voucr = FUNC1(pdata->bus_fmt) << 29;
	int i = 100;

	/* Disable all IRQs */
	FUNC3(vou_dev, VOUIR, 0);

	/* Reset VOU interfaces - registers unaffected */
	FUNC3(vou_dev, VOUSRR, 0x101);
	while (--i && (FUNC2(vou_dev, VOUSRR) & 0x101))
		FUNC7(1);

	if (!i)
		return -ETIMEDOUT;

	FUNC0(vou_dev->v4l2_dev.dev, "Reset took %dus\n", 100 - i);

	if (pdata->flags & SH_VOU_PCLK_FALLING)
		voucr |= 1 << 28;
	if (pdata->flags & SH_VOU_HSYNC_LOW)
		voucr |= 1 << 27;
	if (pdata->flags & SH_VOU_VSYNC_LOW)
		voucr |= 1 << 26;
	FUNC4(vou_dev, VOUCR, voucr, 0xfc000000);

	/* Manual register side switching at first */
	FUNC3(vou_dev, VOURCR, 4);
	/* Default - fixed HSYNC length, can be made configurable is required */
	FUNC5(vou_dev, VOUMSR, 0x800000);

	FUNC6(vou_dev, &vou_dev->pix);

	return 0;
}