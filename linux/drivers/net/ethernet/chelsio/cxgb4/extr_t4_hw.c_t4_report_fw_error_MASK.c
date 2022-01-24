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
struct adapter {int /*<<< orphan*/  flags; int /*<<< orphan*/  pdev_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CXGB4_FW_OK ; 
 int /*<<< orphan*/  PCIE_FW_A ; 
 int PCIE_FW_ERR_F ; 
 size_t FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const* const) ; 
 int FUNC2 (struct adapter*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct adapter *adap)
{
	static const char *const reason[] = {
		"Crash",                        /* PCIE_FW_EVAL_CRASH */
		"During Device Preparation",    /* PCIE_FW_EVAL_PREP */
		"During Device Configuration",  /* PCIE_FW_EVAL_CONF */
		"During Device Initialization", /* PCIE_FW_EVAL_INIT */
		"Unexpected Event",             /* PCIE_FW_EVAL_UNEXPECTEDEVENT */
		"Insufficient Airflow",         /* PCIE_FW_EVAL_OVERHEAT */
		"Device Shutdown",              /* PCIE_FW_EVAL_DEVICESHUTDOWN */
		"Reserved",                     /* reserved */
	};
	u32 pcie_fw;

	pcie_fw = FUNC2(adap, PCIE_FW_A);
	if (pcie_fw & PCIE_FW_ERR_F) {
		FUNC1(adap->pdev_dev, "Firmware reports adapter error: %s\n",
			reason[FUNC0(pcie_fw)]);
		adap->flags &= ~CXGB4_FW_OK;
	}
}