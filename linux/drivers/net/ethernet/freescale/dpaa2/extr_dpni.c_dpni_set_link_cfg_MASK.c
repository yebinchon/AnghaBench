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
struct dpni_link_cfg {int /*<<< orphan*/  options; int /*<<< orphan*/  rate; } ;
struct dpni_cmd_link_cfg {int /*<<< orphan*/  options; int /*<<< orphan*/  rate; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPNI_CMDID_SET_LINK_CFG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct fsl_mc_io*,struct fsl_mc_command*) ; 

int FUNC4(struct fsl_mc_io *mc_io,
		      u32 cmd_flags,
		      u16 token,
		      const struct dpni_link_cfg *cfg)
{
	struct fsl_mc_command cmd = { 0 };
	struct dpni_cmd_link_cfg *cmd_params;

	/* prepare command */
	cmd.header = FUNC2(DPNI_CMDID_SET_LINK_CFG,
					  cmd_flags,
					  token);
	cmd_params = (struct dpni_cmd_link_cfg *)cmd.params;
	cmd_params->rate = FUNC0(cfg->rate);
	cmd_params->options = FUNC1(cfg->options);

	/* send command to mc*/
	return FUNC3(mc_io, &cmd);
}