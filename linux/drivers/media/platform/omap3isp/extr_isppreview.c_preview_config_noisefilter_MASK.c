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
struct omap3isp_prev_nf {int /*<<< orphan*/ * table; int /*<<< orphan*/  spread; } ;
struct prev_params {struct omap3isp_prev_nf nf; } ;
struct isp_prev_device {int dummy; } ;
struct isp_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISPPRV_NF ; 
 int /*<<< orphan*/  ISPPRV_NF_TABLE_ADDR ; 
 int /*<<< orphan*/  ISPPRV_SET_TBL_ADDR ; 
 int /*<<< orphan*/  ISPPRV_SET_TBL_DATA ; 
 unsigned int OMAP3ISP_PREV_NF_TBL_SIZE ; 
 int /*<<< orphan*/  OMAP3_ISP_IOMEM_PREV ; 
 int /*<<< orphan*/  FUNC0 (struct isp_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct isp_device* FUNC1 (struct isp_prev_device*) ; 

__attribute__((used)) static void
FUNC2(struct isp_prev_device *prev,
			   const struct prev_params *params)
{
	struct isp_device *isp = FUNC1(prev);
	const struct omap3isp_prev_nf *nf = &params->nf;
	unsigned int i;

	FUNC0(isp, nf->spread, OMAP3_ISP_IOMEM_PREV, ISPPRV_NF);
	FUNC0(isp, ISPPRV_NF_TABLE_ADDR,
		       OMAP3_ISP_IOMEM_PREV, ISPPRV_SET_TBL_ADDR);
	for (i = 0; i < OMAP3ISP_PREV_NF_TBL_SIZE; i++) {
		FUNC0(isp, nf->table[i],
			       OMAP3_ISP_IOMEM_PREV, ISPPRV_SET_TBL_DATA);
	}
}