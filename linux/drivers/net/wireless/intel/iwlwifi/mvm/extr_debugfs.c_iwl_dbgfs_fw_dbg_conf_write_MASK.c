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
struct iwl_mvm {int /*<<< orphan*/  mutex; int /*<<< orphan*/  fwrt; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 unsigned int FW_DBG_CONF_MAX ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC6(struct iwl_mvm *mvm,
					   char *buf, size_t count,
					   loff_t *ppos)
{
	unsigned int conf_id;
	int ret;

	if (!FUNC2(mvm))
		return -EIO;

	ret = FUNC3(buf, 0, &conf_id);
	if (ret)
		return ret;

	if (FUNC0(conf_id >= FW_DBG_CONF_MAX))
		return -EINVAL;

	FUNC4(&mvm->mutex);
	ret = FUNC1(&mvm->fwrt, conf_id);
	FUNC5(&mvm->mutex);

	return ret ?: count;
}