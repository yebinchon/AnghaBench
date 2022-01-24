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
struct iwl_host_cmd {int flags; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int CMD_WANT_SKB ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_trans*,char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_trans*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct iwl_trans*,struct iwl_host_cmd*) ; 

__attribute__((used)) static int FUNC4(struct iwl_trans *trans,
				    struct iwl_host_cmd *cmd)
{
	int ret;

	/* An asynchronous command can not expect an SKB to be set. */
	if (FUNC1(cmd->flags & CMD_WANT_SKB))
		return -EINVAL;

	ret = FUNC3(trans, cmd);
	if (ret < 0) {
		FUNC0(trans,
			"Error sending %s: enqueue_hcmd failed: %d\n",
			FUNC2(trans, cmd->id), ret);
		return ret;
	}
	return 0;
}