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
struct il_priv {int /*<<< orphan*/  status; } ;
struct il_host_cmd {int flags; int /*<<< orphan*/  id; scalar_t__ callback; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CMD_ASYNC ; 
 int CMD_WANT_SKB ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  S_EXIT_PENDING ; 
 int FUNC2 (struct il_priv*,struct il_host_cmd*) ; 
 scalar_t__ il_generic_cmd_callback ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(struct il_priv *il, struct il_host_cmd *cmd)
{
	int ret;

	FUNC0(!(cmd->flags & CMD_ASYNC));

	/* An asynchronous command can not expect an SKB to be set. */
	FUNC0(cmd->flags & CMD_WANT_SKB);

	/* Assign a generic callback if one is not provided */
	if (!cmd->callback)
		cmd->callback = il_generic_cmd_callback;

	if (FUNC4(S_EXIT_PENDING, &il->status))
		return -EBUSY;

	ret = FUNC2(il, cmd);
	if (ret < 0) {
		FUNC1("Error sending %s: enqueue_hcmd failed: %d\n",
		       FUNC3(cmd->id), ret);
		return ret;
	}
	return 0;
}