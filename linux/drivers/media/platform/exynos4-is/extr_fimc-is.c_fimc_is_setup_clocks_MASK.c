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
struct fimc_is {int /*<<< orphan*/ * clocks; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACLK_AXI_FREQUENCY ; 
 int /*<<< orphan*/  ATCLK_MCUISP_FREQUENCY ; 
 size_t ISS_CLK_ACLK200 ; 
 size_t ISS_CLK_ACLK200_DIV ; 
 size_t ISS_CLK_ACLK400MCUISP ; 
 size_t ISS_CLK_ACLK400MCUISP_DIV ; 
 size_t ISS_CLK_ISP_DIV0 ; 
 size_t ISS_CLK_ISP_DIV1 ; 
 size_t ISS_CLK_MCUISP_DIV0 ; 
 size_t ISS_CLK_MCUISP_DIV1 ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct fimc_is *is)
{
	int ret;

	ret = FUNC0(is->clocks[ISS_CLK_ACLK200],
					is->clocks[ISS_CLK_ACLK200_DIV]);
	if (ret < 0)
		return ret;

	ret = FUNC0(is->clocks[ISS_CLK_ACLK400MCUISP],
					is->clocks[ISS_CLK_ACLK400MCUISP_DIV]);
	if (ret < 0)
		return ret;

	ret = FUNC1(is->clocks[ISS_CLK_ISP_DIV0], ACLK_AXI_FREQUENCY);
	if (ret < 0)
		return ret;

	ret = FUNC1(is->clocks[ISS_CLK_ISP_DIV1], ACLK_AXI_FREQUENCY);
	if (ret < 0)
		return ret;

	ret = FUNC1(is->clocks[ISS_CLK_MCUISP_DIV0],
					ATCLK_MCUISP_FREQUENCY);
	if (ret < 0)
		return ret;

	return FUNC1(is->clocks[ISS_CLK_MCUISP_DIV1],
					ATCLK_MCUISP_FREQUENCY);
}