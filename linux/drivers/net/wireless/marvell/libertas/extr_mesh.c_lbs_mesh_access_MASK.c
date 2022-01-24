#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct lbs_private {int dummy; } ;
struct TYPE_2__ {scalar_t__ result; void* size; void* command; } ;
struct cmd_ds_mesh_access {void* action; TYPE_1__ hdr; } ;

/* Variables and functions */
 int CMD_MESH_ACCESS ; 
 void* FUNC0 (int) ; 
 int FUNC1 (struct lbs_private*,int,struct cmd_ds_mesh_access*) ; 

__attribute__((used)) static int FUNC2(struct lbs_private *priv, uint16_t cmd_action,
		    struct cmd_ds_mesh_access *cmd)
{
	int ret;

	cmd->hdr.command = FUNC0(CMD_MESH_ACCESS);
	cmd->hdr.size = FUNC0(sizeof(*cmd));
	cmd->hdr.result = 0;

	cmd->action = FUNC0(cmd_action);

	ret = FUNC1(priv, CMD_MESH_ACCESS, cmd);

	return ret;
}