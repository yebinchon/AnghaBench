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
typedef  enum resizer_input_entity { ____Placeholder_resizer_input_entity } resizer_input_entity ;

/* Variables and functions */
 int /*<<< orphan*/  ISPRSZ_CNT ; 
 int /*<<< orphan*/  ISPRSZ_CNT_INPSRC ; 
 int /*<<< orphan*/  OMAP3_ISP_IOMEM_RESZ ; 
 int RESIZER_INPUT_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (struct isp_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct isp_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct isp_device* FUNC2 (struct isp_res_device*) ; 

__attribute__((used)) static void FUNC3(struct isp_res_device *res,
			       enum resizer_input_entity source)
{
	struct isp_device *isp = FUNC2(res);

	if (source == RESIZER_INPUT_MEMORY)
		FUNC1(isp, OMAP3_ISP_IOMEM_RESZ, ISPRSZ_CNT,
			    ISPRSZ_CNT_INPSRC);
	else
		FUNC0(isp, OMAP3_ISP_IOMEM_RESZ, ISPRSZ_CNT,
			    ISPRSZ_CNT_INPSRC);
}