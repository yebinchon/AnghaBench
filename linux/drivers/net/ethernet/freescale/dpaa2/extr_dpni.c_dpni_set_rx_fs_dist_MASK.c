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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct fsl_mc_io {int dummy; } ;
struct fsl_mc_command {scalar_t__ params; int /*<<< orphan*/  header; int /*<<< orphan*/  member_0; } ;
struct dpni_rx_dist_cfg {int /*<<< orphan*/  key_cfg_iova; int /*<<< orphan*/  fs_miss_flow_id; int /*<<< orphan*/  tc; int /*<<< orphan*/  enable; int /*<<< orphan*/  dist_size; } ;
struct dpni_cmd_set_rx_fs_dist {int /*<<< orphan*/  key_cfg_iova; void* miss_flow_id; int /*<<< orphan*/  tc; int /*<<< orphan*/  enable; void* dist_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPNI_CMDID_SET_RX_FS_DIST ; 
 int /*<<< orphan*/  RX_FS_DIST_ENABLE ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct fsl_mc_io*,struct fsl_mc_command*) ; 

int FUNC5(struct fsl_mc_io *mc_io,
			u32 cmd_flags,
			u16 token,
			const struct dpni_rx_dist_cfg *cfg)
{
	struct dpni_cmd_set_rx_fs_dist *cmd_params;
	struct fsl_mc_command cmd = { 0 };

	/* prepare command */
	cmd.header = FUNC3(DPNI_CMDID_SET_RX_FS_DIST,
					  cmd_flags,
					  token);
	cmd_params = (struct dpni_cmd_set_rx_fs_dist *)cmd.params;
	cmd_params->dist_size = FUNC0(cfg->dist_size);
	FUNC2(cmd_params->enable, RX_FS_DIST_ENABLE, cfg->enable);
	cmd_params->tc = cfg->tc;
	cmd_params->miss_flow_id = FUNC0(cfg->fs_miss_flow_id);
	cmd_params->key_cfg_iova = FUNC1(cfg->key_cfg_iova);

	/* send command to mc*/
	return FUNC4(mc_io, &cmd);
}