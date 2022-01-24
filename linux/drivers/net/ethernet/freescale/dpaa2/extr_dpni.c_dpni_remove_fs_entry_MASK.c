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
struct dpni_cmd_remove_fs_entry {void* mask_iova; void* key_iova; int /*<<< orphan*/  key_size; int /*<<< orphan*/  tc_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPNI_CMDID_REMOVE_FS_ENT ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct fsl_mc_io*,struct fsl_mc_command*) ; 

int FUNC3(struct fsl_mc_io *mc_io,
			 u32 cmd_flags,
			 u16 token,
			 u8 tc_id,
			 const struct dpni_rule_cfg *cfg)
{
	struct dpni_cmd_remove_fs_entry *cmd_params;
	struct fsl_mc_command cmd = { 0 };

	/* prepare command */
	cmd.header = FUNC1(DPNI_CMDID_REMOVE_FS_ENT,
					  cmd_flags,
					  token);
	cmd_params = (struct dpni_cmd_remove_fs_entry *)cmd.params;
	cmd_params->tc_id = tc_id;
	cmd_params->key_size = cfg->key_size;
	cmd_params->key_iova = FUNC0(cfg->key_iova);
	cmd_params->mask_iova = FUNC0(cfg->mask_iova);

	/* send command to mc*/
	return FUNC2(mc_io, &cmd);
}