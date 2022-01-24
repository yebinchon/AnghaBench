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
struct iwl_trans_pcie {int /*<<< orphan*/  mutex; } ;
struct iwl_trans {int dummy; } ;

/* Variables and functions */
 struct iwl_trans_pcie* FUNC0 (struct iwl_trans*) ; 
 int FUNC1 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct iwl_trans *trans)
{
	struct iwl_trans_pcie *trans_pcie = FUNC0(trans);
	int ret;

	FUNC2(&trans_pcie->mutex);
	ret = FUNC1(trans);
	FUNC3(&trans_pcie->mutex);

	return ret;
}