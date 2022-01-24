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
struct iwl_trans {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR_DBG_LINK_PWR_MGMT_REG ; 
 int /*<<< orphan*/  CSR_HW_IF_CONFIG_REG ; 
 int /*<<< orphan*/  CSR_HW_IF_CONFIG_REG_PREPARE ; 
 int /*<<< orphan*/  CSR_RESET_LINK_PWR_MGMT_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_trans*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_trans*,char*) ; 
 int FUNC2 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

int FUNC6(struct iwl_trans *trans)
{
	int ret;
	int t = 0;
	int iter;

	FUNC0(trans, "iwl_trans_prepare_card_hw enter\n");

	ret = FUNC2(trans);
	/* If the card is ready, exit 0 */
	if (ret >= 0)
		return 0;

	FUNC3(trans, CSR_DBG_LINK_PWR_MGMT_REG,
		    CSR_RESET_LINK_PWR_MGMT_DISABLED);
	FUNC5(1000, 2000);

	for (iter = 0; iter < 10; iter++) {
		/* If HW is not ready, prepare the conditions to check again */
		FUNC3(trans, CSR_HW_IF_CONFIG_REG,
			    CSR_HW_IF_CONFIG_REG_PREPARE);

		do {
			ret = FUNC2(trans);
			if (ret >= 0)
				return 0;

			FUNC5(200, 1000);
			t += 200;
		} while (t < 150000);
		FUNC4(25);
	}

	FUNC1(trans, "Couldn't prepare the card\n");

	return ret;
}