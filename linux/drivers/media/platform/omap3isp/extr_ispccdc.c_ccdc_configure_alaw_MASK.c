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
struct isp_format_info {int width; } ;
struct isp_device {int dummy; } ;
struct isp_ccdc_device {scalar_t__ alaw; TYPE_1__* formats; } ;
struct TYPE_2__ {int /*<<< orphan*/  code; } ;

/* Variables and functions */
 size_t CCDC_PAD_SINK ; 
 int /*<<< orphan*/  ISPCCDC_ALAW ; 
 int /*<<< orphan*/  ISPCCDC_ALAW_CCDTBL ; 
 int /*<<< orphan*/  ISPCCDC_ALAW_GWDI_10_1 ; 
 int /*<<< orphan*/  ISPCCDC_ALAW_GWDI_11_2 ; 
 int /*<<< orphan*/  ISPCCDC_ALAW_GWDI_12_3 ; 
 int /*<<< orphan*/  ISPCCDC_ALAW_GWDI_9_0 ; 
 int /*<<< orphan*/  OMAP3_ISP_IOMEM_CCDC ; 
 int /*<<< orphan*/  FUNC0 (struct isp_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct isp_format_info* FUNC1 (int /*<<< orphan*/ ) ; 
 struct isp_device* FUNC2 (struct isp_ccdc_device*) ; 

__attribute__((used)) static void FUNC3(struct isp_ccdc_device *ccdc)
{
	struct isp_device *isp = FUNC2(ccdc);
	const struct isp_format_info *info;
	u32 alaw = 0;

	info = FUNC1(ccdc->formats[CCDC_PAD_SINK].code);

	switch (info->width) {
	case 8:
		return;

	case 10:
		alaw = ISPCCDC_ALAW_GWDI_9_0;
		break;
	case 11:
		alaw = ISPCCDC_ALAW_GWDI_10_1;
		break;
	case 12:
		alaw = ISPCCDC_ALAW_GWDI_11_2;
		break;
	case 13:
		alaw = ISPCCDC_ALAW_GWDI_12_3;
		break;
	}

	if (ccdc->alaw)
		alaw |= ISPCCDC_ALAW_CCDTBL;

	FUNC0(isp, alaw, OMAP3_ISP_IOMEM_CCDC, ISPCCDC_ALAW);
}