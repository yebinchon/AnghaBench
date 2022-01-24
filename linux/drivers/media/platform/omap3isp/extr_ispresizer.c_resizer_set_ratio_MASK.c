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
typedef  int /*<<< orphan*/  u16 ;
struct resizer_ratio {int horz; int vert; } ;
struct isp_res_device {int dummy; } ;
struct isp_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * v_filter_coef_4tap; int /*<<< orphan*/ * v_filter_coef_7tap; int /*<<< orphan*/ * h_filter_coef_4tap; int /*<<< orphan*/ * h_filter_coef_7tap; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISPRSZ_CNT ; 
 int ISPRSZ_CNT_HRSZ_MASK ; 
 int ISPRSZ_CNT_HRSZ_SHIFT ; 
 int ISPRSZ_CNT_VRSZ_MASK ; 
 int ISPRSZ_CNT_VRSZ_SHIFT ; 
 int MID_RESIZE_VALUE ; 
 int /*<<< orphan*/  OMAP3_ISP_IOMEM_RESZ ; 
 TYPE_1__ filter_coefs ; 
 int FUNC0 (struct isp_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct isp_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct isp_res_device*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 struct isp_device* FUNC3 (struct isp_res_device*) ; 

__attribute__((used)) static void FUNC4(struct isp_res_device *res,
			      const struct resizer_ratio *ratio)
{
	struct isp_device *isp = FUNC3(res);
	const u16 *h_filter, *v_filter;
	u32 rgval;

	rgval = FUNC0(isp, OMAP3_ISP_IOMEM_RESZ, ISPRSZ_CNT) &
			      ~(ISPRSZ_CNT_HRSZ_MASK | ISPRSZ_CNT_VRSZ_MASK);
	rgval |= ((ratio->horz - 1) << ISPRSZ_CNT_HRSZ_SHIFT)
		  & ISPRSZ_CNT_HRSZ_MASK;
	rgval |= ((ratio->vert - 1) << ISPRSZ_CNT_VRSZ_SHIFT)
		  & ISPRSZ_CNT_VRSZ_MASK;
	FUNC1(isp, rgval, OMAP3_ISP_IOMEM_RESZ, ISPRSZ_CNT);

	/* prepare horizontal filter coefficients */
	if (ratio->horz > MID_RESIZE_VALUE)
		h_filter = &filter_coefs.h_filter_coef_7tap[0];
	else
		h_filter = &filter_coefs.h_filter_coef_4tap[0];

	/* prepare vertical filter coefficients */
	if (ratio->vert > MID_RESIZE_VALUE)
		v_filter = &filter_coefs.v_filter_coef_7tap[0];
	else
		v_filter = &filter_coefs.v_filter_coef_4tap[0];

	FUNC2(res, h_filter, v_filter);
}