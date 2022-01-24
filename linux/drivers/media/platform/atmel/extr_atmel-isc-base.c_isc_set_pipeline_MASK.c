#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct regmap {int dummy; } ;
struct TYPE_4__ {TYPE_1__* sd_format; } ;
struct isc_ctrls {scalar_t__ awb; size_t gamma_index; int brightness; int contrast; } ;
struct isc_device {TYPE_2__ config; int /*<<< orphan*/ * pipeline; struct isc_ctrls ctrls; struct regmap* regmap; } ;
struct TYPE_3__ {int cfa_baycfg; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  GAMMA_ENTRIES ; 
 int /*<<< orphan*/  ISC_CBC_BRIGHT ; 
 int /*<<< orphan*/  ISC_CBC_CONTRAST ; 
 int /*<<< orphan*/  ISC_CFA_CFG ; 
 int ISC_CFA_CFG_EITPOL ; 
 int /*<<< orphan*/  ISC_CSC_CBB_OCB ; 
 int /*<<< orphan*/  ISC_CSC_CBR_CBG ; 
 int /*<<< orphan*/  ISC_CSC_CRB_OCR ; 
 int /*<<< orphan*/  ISC_CSC_CRR_CRG ; 
 int /*<<< orphan*/  ISC_CSC_YB_OY ; 
 int /*<<< orphan*/  ISC_CSC_YR_YG ; 
 int /*<<< orphan*/  ISC_GAM_BENTRY ; 
 int /*<<< orphan*/  ISC_GAM_GENTRY ; 
 int /*<<< orphan*/  ISC_GAM_RENTRY ; 
 unsigned int ISC_PIPE_LINE_NODE_NUM ; 
 int /*<<< orphan*/  ISC_WB_CFG ; 
 scalar_t__ ISC_WB_NONE ; 
 int** isc_gamma_table ; 
 int /*<<< orphan*/  FUNC1 (struct isc_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct isc_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct regmap*,int /*<<< orphan*/ ,int const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct regmap*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct isc_device *isc, u32 pipeline)
{
	struct regmap *regmap = isc->regmap;
	struct isc_ctrls *ctrls = &isc->ctrls;
	u32 val, bay_cfg;
	const u32 *gamma;
	unsigned int i;

	/* WB-->CFA-->CC-->GAM-->CSC-->CBC-->SUB422-->SUB420 */
	for (i = 0; i < ISC_PIPE_LINE_NODE_NUM; i++) {
		val = pipeline & FUNC0(i) ? 1 : 0;
		FUNC4(isc->pipeline[i], val);
	}

	if (!pipeline)
		return;

	bay_cfg = isc->config.sd_format->cfa_baycfg;

	if (ctrls->awb == ISC_WB_NONE)
		FUNC1(isc);

	FUNC5(regmap, ISC_WB_CFG, bay_cfg);
	FUNC2(isc);

	FUNC5(regmap, ISC_CFA_CFG, bay_cfg | ISC_CFA_CFG_EITPOL);

	gamma = &isc_gamma_table[ctrls->gamma_index][0];
	FUNC3(regmap, ISC_GAM_BENTRY, gamma, GAMMA_ENTRIES);
	FUNC3(regmap, ISC_GAM_GENTRY, gamma, GAMMA_ENTRIES);
	FUNC3(regmap, ISC_GAM_RENTRY, gamma, GAMMA_ENTRIES);

	/* Convert RGB to YUV */
	FUNC5(regmap, ISC_CSC_YR_YG, 0x42 | (0x81 << 16));
	FUNC5(regmap, ISC_CSC_YB_OY, 0x19 | (0x10 << 16));
	FUNC5(regmap, ISC_CSC_CBR_CBG, 0xFDA | (0xFB6 << 16));
	FUNC5(regmap, ISC_CSC_CBB_OCB, 0x70 | (0x80 << 16));
	FUNC5(regmap, ISC_CSC_CRR_CRG, 0x70 | (0xFA2 << 16));
	FUNC5(regmap, ISC_CSC_CRB_OCR, 0xFEE | (0x80 << 16));

	FUNC5(regmap, ISC_CBC_BRIGHT, ctrls->brightness);
	FUNC5(regmap, ISC_CBC_CONTRAST, ctrls->contrast);
}