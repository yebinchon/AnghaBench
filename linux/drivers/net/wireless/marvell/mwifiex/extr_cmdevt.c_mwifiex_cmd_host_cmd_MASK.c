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
struct mwifiex_private {int /*<<< orphan*/  adapter; } ;
struct mwifiex_ds_misc_cmd {int /*<<< orphan*/  len; int /*<<< orphan*/  cmd; } ;
struct host_cmd_ds_command {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD ; 
 int /*<<< orphan*/  FUNC0 (struct host_cmd_ds_command*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct mwifiex_private *priv,
				struct host_cmd_ds_command *cmd,
				struct mwifiex_ds_misc_cmd *pcmd_ptr)
{
	/* Copy the HOST command to command buffer */
	FUNC0(cmd, pcmd_ptr->cmd, pcmd_ptr->len);
	FUNC1(priv->adapter, CMD,
		    "cmd: host cmd size = %d\n", pcmd_ptr->len);
	return 0;
}