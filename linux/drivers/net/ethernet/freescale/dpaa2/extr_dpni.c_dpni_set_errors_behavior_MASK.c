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
struct dpni_error_cfg {int /*<<< orphan*/  set_frame_annotation; int /*<<< orphan*/  error_action; int /*<<< orphan*/  errors; } ;
struct dpni_cmd_set_errors_behavior {int /*<<< orphan*/  flags; int /*<<< orphan*/  errors; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPNI_CMDID_SET_ERRORS_BEHAVIOR ; 
 int /*<<< orphan*/  ERROR_ACTION ; 
 int /*<<< orphan*/  FRAME_ANN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct fsl_mc_io*,struct fsl_mc_command*) ; 

int FUNC4(struct fsl_mc_io *mc_io,
			     u32 cmd_flags,
			     u16 token,
			     struct dpni_error_cfg *cfg)
{
	struct fsl_mc_command cmd = { 0 };
	struct dpni_cmd_set_errors_behavior *cmd_params;

	/* prepare command */
	cmd.header = FUNC2(DPNI_CMDID_SET_ERRORS_BEHAVIOR,
					  cmd_flags,
					  token);
	cmd_params = (struct dpni_cmd_set_errors_behavior *)cmd.params;
	cmd_params->errors = FUNC0(cfg->errors);
	FUNC1(cmd_params->flags, ERROR_ACTION, cfg->error_action);
	FUNC1(cmd_params->flags, FRAME_ANN, cfg->set_frame_annotation);

	/* send command to mc*/
	return FUNC3(mc_io, &cmd);
}