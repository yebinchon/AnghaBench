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
struct prev_params {int dummy; } ;
struct TYPE_2__ {int cfa_order; int active; struct prev_params* params; } ;
struct isp_prev_device {TYPE_1__ params; } ;
struct isp_format_info {int width; int flavor; } ;
struct isp_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISPPRV_PCR ; 
 int /*<<< orphan*/  ISPPRV_PCR_CFAEN ; 
 int /*<<< orphan*/  ISPPRV_PCR_CFAFMT_BAYER ; 
 int /*<<< orphan*/  ISPPRV_PCR_CFAFMT_MASK ; 
 int /*<<< orphan*/  ISPPRV_PCR_WIDTH ; 
#define  MEDIA_BUS_FMT_SBGGR8_1X8 131 
#define  MEDIA_BUS_FMT_SGBRG8_1X8 130 
#define  MEDIA_BUS_FMT_SGRBG8_1X8 129 
#define  MEDIA_BUS_FMT_SRGGB8_1X8 128 
 int OMAP3ISP_PREV_CFA ; 
 int /*<<< orphan*/  OMAP3_ISP_IOMEM_PREV ; 
 int /*<<< orphan*/  FUNC0 (struct isp_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct isp_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct isp_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct isp_prev_device*,struct prev_params*) ; 
 struct isp_device* FUNC4 (struct isp_prev_device*) ; 

__attribute__((used)) static void FUNC5(struct isp_prev_device *prev,
					const struct isp_format_info *info)
{
	struct isp_device *isp = FUNC4(prev);
	struct prev_params *params;

	if (info->width == 8)
		FUNC2(isp, OMAP3_ISP_IOMEM_PREV, ISPPRV_PCR,
			    ISPPRV_PCR_WIDTH);
	else
		FUNC0(isp, OMAP3_ISP_IOMEM_PREV, ISPPRV_PCR,
			    ISPPRV_PCR_WIDTH);

	switch (info->flavor) {
	case MEDIA_BUS_FMT_SGRBG8_1X8:
		prev->params.cfa_order = 0;
		break;
	case MEDIA_BUS_FMT_SRGGB8_1X8:
		prev->params.cfa_order = 1;
		break;
	case MEDIA_BUS_FMT_SBGGR8_1X8:
		prev->params.cfa_order = 2;
		break;
	case MEDIA_BUS_FMT_SGBRG8_1X8:
		prev->params.cfa_order = 3;
		break;
	default:
		/* Disable CFA for non-Bayer formats. */
		FUNC0(isp, OMAP3_ISP_IOMEM_PREV, ISPPRV_PCR,
			    ISPPRV_PCR_CFAEN);
		return;
	}

	FUNC2(isp, OMAP3_ISP_IOMEM_PREV, ISPPRV_PCR, ISPPRV_PCR_CFAEN);
	FUNC1(isp, OMAP3_ISP_IOMEM_PREV, ISPPRV_PCR,
			ISPPRV_PCR_CFAFMT_MASK, ISPPRV_PCR_CFAFMT_BAYER);

	params = (prev->params.active & OMAP3ISP_PREV_CFA)
	       ? &prev->params.params[0] : &prev->params.params[1];

	FUNC3(prev, params);
}