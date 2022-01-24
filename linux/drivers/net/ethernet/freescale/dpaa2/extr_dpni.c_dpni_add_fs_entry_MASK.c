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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct fsl_mc_io {int dummy; } ;
struct fsl_mc_command {scalar_t__ params; int /*<<< orphan*/  header; int /*<<< orphan*/  member_0; } ;
struct dpni_rule_cfg {int /*<<< orphan*/  mask_iova; int /*<<< orphan*/  key_iova; int /*<<< orphan*/  key_size; } ;
struct dpni_fs_action_cfg {int /*<<< orphan*/  flc; int /*<<< orphan*/  flow_id; int /*<<< orphan*/  options; } ;
struct dpni_cmd_add_fs_entry {void* flc; void* flow_id; void* options; void* mask_iova; void* key_iova; void* index; int /*<<< orphan*/  key_size; int /*<<< orphan*/  tc_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPNI_CMDID_ADD_FS_ENT ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct fsl_mc_io*,struct fsl_mc_command*) ; 

int FUNC4(struct fsl_mc_io *mc_io,
		      u32 cmd_flags,
		      u16 token,
		      u8 tc_id,
		      u16 index,
		      const struct dpni_rule_cfg *cfg,
		      const struct dpni_fs_action_cfg *action)
{
	struct dpni_cmd_add_fs_entry *cmd_params;
	struct fsl_mc_command cmd = { 0 };

	/* prepare command */
	cmd.header = FUNC2(DPNI_CMDID_ADD_FS_ENT,
					  cmd_flags,
					  token);
	cmd_params = (struct dpni_cmd_add_fs_entry *)cmd.params;
	cmd_params->tc_id = tc_id;
	cmd_params->key_size = cfg->key_size;
	cmd_params->index = FUNC0(index);
	cmd_params->key_iova = FUNC1(cfg->key_iova);
	cmd_params->mask_iova = FUNC1(cfg->mask_iova);
	cmd_params->options = FUNC0(action->options);
	cmd_params->flow_id = FUNC0(action->flow_id);
	cmd_params->flc = FUNC1(action->flc);

	/* send command to mc*/
	return FUNC3(mc_io, &cmd);
}