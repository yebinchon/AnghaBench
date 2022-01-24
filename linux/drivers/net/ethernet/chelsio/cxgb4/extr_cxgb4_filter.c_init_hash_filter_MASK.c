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
struct TYPE_2__ {int hash_filter; int /*<<< orphan*/  chip; } ;
struct adapter {TYPE_1__ params; int /*<<< orphan*/  pdev_dev; } ;

/* Variables and functions */
 int ACTIVEFILTERCOUNTS_F ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  LE_DB_RSP_CODE_0_A ; 
 int /*<<< orphan*/  LE_DB_RSP_CODE_1_A ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  TP_GLOBAL_CONFIG_A ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (struct adapter*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct adapter*,int /*<<< orphan*/ ) ; 

void FUNC6(struct adapter *adap)
{
	u32 reg;

	/* On T6, verify the necessary register configs and warn the user in
	 * case of improper config
	 */
	if (FUNC4(adap->params.chip)) {
		if (FUNC3(adap)) {
			if (!(FUNC5(adap, TP_GLOBAL_CONFIG_A)
			   & ACTIVEFILTERCOUNTS_F)) {
				FUNC2(adap->pdev_dev, "Invalid hash filter + ofld config\n");
				return;
			}
		} else {
			reg = FUNC5(adap, LE_DB_RSP_CODE_0_A);
			if (FUNC1(reg) != 4) {
				FUNC2(adap->pdev_dev, "Invalid hash filter config\n");
				return;
			}

			reg = FUNC5(adap, LE_DB_RSP_CODE_1_A);
			if (FUNC0(reg) != 4) {
				FUNC2(adap->pdev_dev, "Invalid hash filter config\n");
				return;
			}
		}

	} else {
		FUNC2(adap->pdev_dev, "Hash filter supported only on T6\n");
		return;
	}

	adap->params.hash_filter = 1;
}