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
struct isp_res_device {int dummy; } ;
struct isp_device {int dummy; } ;
typedef  enum resizer_colors_type { ____Placeholder_resizer_colors_type } resizer_colors_type ;

/* Variables and functions */
 int /*<<< orphan*/  ISPRSZ_CNT ; 
 int /*<<< orphan*/  ISPRSZ_CNT_INPTYP ; 
 int /*<<< orphan*/  OMAP3_ISP_IOMEM_RESZ ; 
 int RSZ_COLOR8 ; 
 int /*<<< orphan*/  FUNC0 (struct isp_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct isp_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct isp_device* FUNC2 (struct isp_res_device*) ; 

__attribute__((used)) static void FUNC3(struct isp_res_device *res,
			       enum resizer_colors_type type)
{
	struct isp_device *isp = FUNC2(res);

	if (type == RSZ_COLOR8)
		FUNC1(isp, OMAP3_ISP_IOMEM_RESZ, ISPRSZ_CNT,
			    ISPRSZ_CNT_INPTYP);
	else
		FUNC0(isp, OMAP3_ISP_IOMEM_RESZ, ISPRSZ_CNT,
			    ISPRSZ_CNT_INPTYP);
}