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
typedef  scalar_t__ u16 ;
struct TYPE_2__ {void* timing_2; void* timing_1; void* acc_control; void* config_ext; void* config; } ;
struct brcmnand_host {TYPE_1__ hwcfg; int /*<<< orphan*/  cs; struct brcmnand_controller* ctrl; } ;
struct brcmnand_controller {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRCMNAND_CS_ACC_CONTROL ; 
 int /*<<< orphan*/  BRCMNAND_CS_CFG ; 
 int /*<<< orphan*/  BRCMNAND_CS_CFG_EXT ; 
 int /*<<< orphan*/  BRCMNAND_CS_TIMING1 ; 
 int /*<<< orphan*/  BRCMNAND_CS_TIMING2 ; 
 scalar_t__ FUNC0 (struct brcmnand_controller*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC1 (struct brcmnand_controller*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct brcmnand_controller*,scalar_t__,void*) ; 

__attribute__((used)) static void FUNC3(struct brcmnand_host *host,
					    int restore)
{
	struct brcmnand_controller *ctrl = host->ctrl;
	u16 cfg_offs = FUNC0(ctrl, host->cs, BRCMNAND_CS_CFG);
	u16 cfg_ext_offs = FUNC0(ctrl, host->cs,
			BRCMNAND_CS_CFG_EXT);
	u16 acc_control_offs = FUNC0(ctrl, host->cs,
			BRCMNAND_CS_ACC_CONTROL);
	u16 t1_offs = FUNC0(ctrl, host->cs, BRCMNAND_CS_TIMING1);
	u16 t2_offs = FUNC0(ctrl, host->cs, BRCMNAND_CS_TIMING2);

	if (restore) {
		FUNC2(ctrl, cfg_offs, host->hwcfg.config);
		if (cfg_offs != cfg_ext_offs)
			FUNC2(ctrl, cfg_ext_offs,
				      host->hwcfg.config_ext);
		FUNC2(ctrl, acc_control_offs, host->hwcfg.acc_control);
		FUNC2(ctrl, t1_offs, host->hwcfg.timing_1);
		FUNC2(ctrl, t2_offs, host->hwcfg.timing_2);
	} else {
		host->hwcfg.config = FUNC1(ctrl, cfg_offs);
		if (cfg_offs != cfg_ext_offs)
			host->hwcfg.config_ext =
				FUNC1(ctrl, cfg_ext_offs);
		host->hwcfg.acc_control = FUNC1(ctrl, acc_control_offs);
		host->hwcfg.timing_1 = FUNC1(ctrl, t1_offs);
		host->hwcfg.timing_2 = FUNC1(ctrl, t2_offs);
	}
}