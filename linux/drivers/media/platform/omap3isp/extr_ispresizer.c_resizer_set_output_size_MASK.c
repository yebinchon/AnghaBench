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
typedef  int u32 ;
struct isp_res_device {int dummy; } ;
struct isp_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISPRSZ_OUT_SIZE ; 
 int ISPRSZ_OUT_SIZE_HORZ_MASK ; 
 int ISPRSZ_OUT_SIZE_HORZ_SHIFT ; 
 int ISPRSZ_OUT_SIZE_VERT_MASK ; 
 int ISPRSZ_OUT_SIZE_VERT_SHIFT ; 
 int /*<<< orphan*/  OMAP3_ISP_IOMEM_RESZ ; 
 int /*<<< orphan*/  FUNC0 (struct isp_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct isp_device* FUNC1 (struct isp_res_device*) ; 

__attribute__((used)) static void FUNC2(struct isp_res_device *res,
				    u32 width, u32 height)
{
	struct isp_device *isp = FUNC1(res);
	u32 rgval;

	rgval  = (width << ISPRSZ_OUT_SIZE_HORZ_SHIFT)
		 & ISPRSZ_OUT_SIZE_HORZ_MASK;
	rgval |= (height << ISPRSZ_OUT_SIZE_VERT_SHIFT)
		 & ISPRSZ_OUT_SIZE_VERT_MASK;
	FUNC0(isp, rgval, OMAP3_ISP_IOMEM_RESZ, ISPRSZ_OUT_SIZE);
}