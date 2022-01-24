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
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  ECHO_CMD ; 
 size_t EIO ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*) ; 
 int FUNC1 (struct iwl_mvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t
FUNC4(struct iwl_mvm *mvm, char *buf,
			      size_t count, loff_t *ppos)
{
	int ret;

	if (!FUNC0(mvm))
		return -EIO;

	FUNC2(&mvm->mutex);
	ret = FUNC1(mvm, ECHO_CMD, 0, 0, NULL);
	FUNC3(&mvm->mutex);

	return ret ?: count;
}