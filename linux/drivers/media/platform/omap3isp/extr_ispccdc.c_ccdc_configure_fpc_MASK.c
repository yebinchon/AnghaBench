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
struct isp_device {int dummy; } ;
struct TYPE_2__ {int dma; int fpnum; } ;
struct isp_ccdc_device {TYPE_1__ fpc; int /*<<< orphan*/  fpc_en; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISPCCDC_FPC ; 
 int /*<<< orphan*/  ISPCCDC_FPC_ADDR ; 
 int ISPCCDC_FPC_FPCEN ; 
 int ISPCCDC_FPC_FPNUM_SHIFT ; 
 int /*<<< orphan*/  OMAP3_ISP_IOMEM_CCDC ; 
 int /*<<< orphan*/  FUNC0 (struct isp_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct isp_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct isp_device* FUNC2 (struct isp_ccdc_device*) ; 

__attribute__((used)) static void FUNC3(struct isp_ccdc_device *ccdc)
{
	struct isp_device *isp = FUNC2(ccdc);

	FUNC0(isp, OMAP3_ISP_IOMEM_CCDC, ISPCCDC_FPC, ISPCCDC_FPC_FPCEN);

	if (!ccdc->fpc_en)
		return;

	FUNC1(isp, ccdc->fpc.dma, OMAP3_ISP_IOMEM_CCDC,
		       ISPCCDC_FPC_ADDR);
	/* The FPNUM field must be set before enabling FPC. */
	FUNC1(isp, (ccdc->fpc.fpnum << ISPCCDC_FPC_FPNUM_SHIFT),
		       OMAP3_ISP_IOMEM_CCDC, ISPCCDC_FPC);
	FUNC1(isp, (ccdc->fpc.fpnum << ISPCCDC_FPC_FPNUM_SHIFT) |
		       ISPCCDC_FPC_FPCEN, OMAP3_ISP_IOMEM_CCDC, ISPCCDC_FPC);
}