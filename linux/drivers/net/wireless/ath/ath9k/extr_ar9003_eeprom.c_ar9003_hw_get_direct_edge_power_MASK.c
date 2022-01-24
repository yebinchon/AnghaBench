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
typedef  int /*<<< orphan*/  u16 ;
struct cal_ctl_data_5g {int /*<<< orphan*/ * ctlEdges; } ;
struct cal_ctl_data_2g {int /*<<< orphan*/ * ctlEdges; } ;
struct ar9300_eeprom {struct cal_ctl_data_5g* ctlPowerData_5G; struct cal_ctl_data_2g* ctlPowerData_2G; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u16 FUNC1(struct ar9300_eeprom *eep,
					   int idx,
					   int edge,
					   bool is2GHz)
{
	struct cal_ctl_data_2g *ctl_2g = eep->ctlPowerData_2G;
	struct cal_ctl_data_5g *ctl_5g = eep->ctlPowerData_5G;

	if (is2GHz)
		return FUNC0(ctl_2g[idx].ctlEdges[edge]);
	else
		return FUNC0(ctl_5g[idx].ctlEdges[edge]);
}