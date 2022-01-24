#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void* b_mg; void* gr_cy; void* gb_g; void* r_ye; } ;
struct TYPE_5__ {TYPE_1__ gain; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; TYPE_2__ bayer; } ;

/* Variables and functions */
 int CCDC_REG_LAST ; 
 int CULH ; 
 int /*<<< orphan*/  CULH_DEFAULT ; 
 int CULV ; 
 int /*<<< orphan*/  CULV_DEFAULT ; 
 int EFAULT ; 
 void* GAIN_DEFAULT ; 
 int LSCCFG2 ; 
 int /*<<< orphan*/  LSCCFG2_DEFAULT ; 
 int MODESET ; 
 int /*<<< orphan*/  MODESET_DEFAULT ; 
 int OUTCLIP ; 
 int /*<<< orphan*/  OUTCLIP_DEFAULT ; 
 int /*<<< orphan*/  VPSS_CCDCIN ; 
 int /*<<< orphan*/  VPSS_CCDC_CLOCK ; 
 TYPE_3__ ccdc_cfg ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(void)
{
	int i;

	FUNC1(ccdc_cfg.dev, "\nstarting ccdc_restore_defaults...");
	/* set all registers to zero */
	for (i = 0; i <= CCDC_REG_LAST; i += 4)
		FUNC2(0, i);

	/* now override the values with power on defaults in registers */
	FUNC2(MODESET_DEFAULT, MODESET);
	/* no culling support */
	FUNC2(CULH_DEFAULT, CULH);
	FUNC2(CULV_DEFAULT, CULV);
	/* Set default Gain and Offset */
	ccdc_cfg.bayer.gain.r_ye = GAIN_DEFAULT;
	ccdc_cfg.bayer.gain.gb_g = GAIN_DEFAULT;
	ccdc_cfg.bayer.gain.gr_cy = GAIN_DEFAULT;
	ccdc_cfg.bayer.gain.b_mg = GAIN_DEFAULT;
	FUNC0();
	FUNC2(OUTCLIP_DEFAULT, OUTCLIP);
	FUNC2(LSCCFG2_DEFAULT, LSCCFG2);
	/* select ccdc input */
	if (FUNC4(VPSS_CCDCIN)) {
		FUNC1(ccdc_cfg.dev, "\ncouldn't select ccdc input source");
		return -EFAULT;
	}
	/* select ccdc clock */
	if (FUNC3(VPSS_CCDC_CLOCK, 1) < 0) {
		FUNC1(ccdc_cfg.dev, "\ncouldn't enable ccdc clock");
		return -EFAULT;
	}
	FUNC1(ccdc_cfg.dev, "\nEnd of ccdc_restore_defaults...");
	return 0;
}