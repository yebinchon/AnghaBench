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
struct iwl_trans_pcie {int opmode_down; int is_down; int /*<<< orphan*/  mutex; } ;
struct iwl_trans {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_trans*,char*,int) ; 
 struct iwl_trans_pcie* FUNC1 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_trans*) ; 
 int FUNC3 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_trans_pcie*) ; 
 int FUNC6 (struct iwl_trans*) ; 
 int FUNC7 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC8 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct iwl_trans *trans)
{
	struct iwl_trans_pcie *trans_pcie = FUNC1(trans);
	int err;

	FUNC9(&trans_pcie->mutex);

	err = FUNC6(trans);
	if (err) {
		FUNC0(trans, "Error while preparing HW: %d\n", err);
		return err;
	}

	err = FUNC7(trans);
	if (err)
		return err;

	FUNC8(trans);

	err = FUNC3(trans);
	if (err)
		return err;

	FUNC5(trans_pcie);

	/* From now on, the op_mode will be kept updated about RF kill state */
	FUNC2(trans);

	trans_pcie->opmode_down = false;

	/* Set is_down to false here so that...*/
	trans_pcie->is_down = false;

	/* ...rfkill can call stop_device and set it false if needed */
	FUNC4(trans);

	return 0;
}