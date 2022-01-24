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
typedef  int /*<<< orphan*/  u32 ;
struct v4l2_mbus_framefmt {int /*<<< orphan*/  code; int /*<<< orphan*/  width; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  active; } ;
struct isp_prev_device {scalar_t__ input; int output; TYPE_1__ params; struct v4l2_mbus_framefmt* formats; } ;
struct isp_format_info {int bpp; } ;
struct isp_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ISPPRV_PCR ; 
 int /*<<< orphan*/  ISPPRV_PCR_RSZPORT ; 
 int /*<<< orphan*/  ISPPRV_PCR_SDRPORT ; 
 int /*<<< orphan*/  OMAP3_ISP_IOMEM_PREV ; 
 scalar_t__ PREVIEW_INPUT_CCDC ; 
 int PREVIEW_OUTPUT_MEMORY ; 
 int PREVIEW_OUTPUT_RESIZER ; 
 size_t PREV_PAD_SINK ; 
 size_t PREV_PAD_SOURCE ; 
 int /*<<< orphan*/  FUNC1 (struct isp_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct isp_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct isp_format_info* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct isp_prev_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct isp_prev_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct isp_prev_device*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct isp_prev_device*,struct isp_format_info const*) ; 
 int /*<<< orphan*/  FUNC8 (struct isp_prev_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct isp_prev_device*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct isp_prev_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct isp_prev_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct isp_prev_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct isp_prev_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 struct isp_device* FUNC16 (struct isp_prev_device*) ; 

__attribute__((used)) static void FUNC17(struct isp_prev_device *prev)
{
	struct isp_device *isp = FUNC16(prev);
	const struct isp_format_info *info;
	struct v4l2_mbus_framefmt *format;
	unsigned long flags;
	u32 update;
	u32 active;

	FUNC14(&prev->params.lock, flags);
	/* Mark all active parameters we are going to touch as busy. */
	update = FUNC11(prev, 0, false);
	active = prev->params.active;
	FUNC15(&prev->params.lock, flags);

	/* PREV_PAD_SINK */
	format = &prev->formats[PREV_PAD_SINK];
	info = FUNC3(format->code);

	FUNC4(prev);

	FUNC7(prev, info);
	FUNC8(prev, active);

	if (prev->input == PREVIEW_INPUT_CCDC)
		FUNC6(prev, 0);
	else
		FUNC6(prev, FUNC0(format->width, 0x20) *
					    info->bpp);

	FUNC13(prev, update, active);

	/* PREV_PAD_SOURCE */
	format = &prev->formats[PREV_PAD_SOURCE];

	if (prev->output & PREVIEW_OUTPUT_MEMORY)
		FUNC2(isp, OMAP3_ISP_IOMEM_PREV, ISPPRV_PCR,
			    ISPPRV_PCR_SDRPORT);
	else
		FUNC1(isp, OMAP3_ISP_IOMEM_PREV, ISPPRV_PCR,
			    ISPPRV_PCR_SDRPORT);

	if (prev->output & PREVIEW_OUTPUT_RESIZER)
		FUNC2(isp, OMAP3_ISP_IOMEM_PREV, ISPPRV_PCR,
			    ISPPRV_PCR_RSZPORT);
	else
		FUNC1(isp, OMAP3_ISP_IOMEM_PREV, ISPPRV_PCR,
			    ISPPRV_PCR_RSZPORT);

	if (prev->output & PREVIEW_OUTPUT_MEMORY)
		FUNC9(prev,
				FUNC0(format->width, 0x10) * 2);

	FUNC5(prev, 0);
	FUNC10(prev, format->code);

	FUNC14(&prev->params.lock, flags);
	FUNC12(prev, update, false);
	FUNC15(&prev->params.lock, flags);
}