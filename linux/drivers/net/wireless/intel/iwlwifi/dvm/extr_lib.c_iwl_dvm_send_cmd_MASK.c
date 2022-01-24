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
struct iwl_priv {int /*<<< orphan*/  trans; int /*<<< orphan*/  mutex; int /*<<< orphan*/  ucode_loaded; int /*<<< orphan*/  status; } ;
struct iwl_host_cmd {int flags; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int CMD_ASYNC ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_priv*,char*,char*) ; 
 int /*<<< orphan*/  STATUS_FW_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct iwl_priv*) ; 
 scalar_t__ FUNC4 (struct iwl_priv*) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct iwl_host_cmd*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC8(struct iwl_priv *priv, struct iwl_host_cmd *cmd)
{
	if (FUNC4(priv) || FUNC3(priv)) {
		FUNC1(priv, "Not sending command - %s KILL\n",
			 FUNC4(priv) ? "RF" : "CT");
		return -EIO;
	}

	if (FUNC7(STATUS_FW_ERROR, &priv->status)) {
		FUNC0(priv, "Command %s failed: FW Error\n",
			FUNC2(priv->trans, cmd->id));
		return -EIO;
	}

	/*
	 * This can happen upon FW ASSERT: we clear the STATUS_FW_ERROR flag
	 * in iwl_down but cancel the workers only later.
	 */
	if (!priv->ucode_loaded) {
		FUNC0(priv, "Fw not loaded - dropping CMD: %x\n", cmd->id);
		return -EIO;
	}

	/*
	 * Synchronous commands from this op-mode must hold
	 * the mutex, this ensures we don't try to send two
	 * (or more) synchronous commands at a time.
	 */
	if (!(cmd->flags & CMD_ASYNC))
		FUNC6(&priv->mutex);

	return FUNC5(priv->trans, cmd);
}