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
struct iwl_mvm {int /*<<< orphan*/  mutex; } ;
struct iwl_ltr_config_cmd {int /*<<< orphan*/ * ltr_cfg_values; int /*<<< orphan*/  static_short; int /*<<< orphan*/  static_long; int /*<<< orphan*/  flags; int /*<<< orphan*/  member_0; } ;
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  ltr_config ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 size_t EINVAL ; 
 size_t EIO ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*) ; 
 int /*<<< orphan*/  LTR_CONFIG ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*) ; 
 int FUNC2 (struct iwl_mvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct iwl_ltr_config_cmd*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t
FUNC6(struct iwl_mvm *mvm,
			   char *buf, size_t count, loff_t *ppos)
{
	int ret;
	struct iwl_ltr_config_cmd ltr_config = {0};

	if (!FUNC1(mvm))
		return -EIO;

	if (FUNC5(buf, "%x,%x,%x,%x,%x,%x,%x",
		   &ltr_config.flags,
		   &ltr_config.static_long,
		   &ltr_config.static_short,
		   &ltr_config.ltr_cfg_values[0],
		   &ltr_config.ltr_cfg_values[1],
		   &ltr_config.ltr_cfg_values[2],
		   &ltr_config.ltr_cfg_values[3]) != 7) {
		return -EINVAL;
	}

	FUNC3(&mvm->mutex);
	ret = FUNC2(mvm, LTR_CONFIG, 0, sizeof(ltr_config),
				   &ltr_config);
	FUNC4(&mvm->mutex);

	if (ret)
		FUNC0(mvm, "failed to send ltr configuration cmd\n");

	return ret ?: count;
}