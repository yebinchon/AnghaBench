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
struct dpni_rsp_get_offload {int /*<<< orphan*/  config; } ;
struct dpni_cmd_get_offload {int dpni_offload; } ;
typedef  enum dpni_offload { ____Placeholder_dpni_offload } dpni_offload ;

/* Variables and functions */
 int /*<<< orphan*/  DPNI_CMDID_GET_OFFLOAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct fsl_mc_io*,struct fsl_mc_command*) ; 

int FUNC3(struct fsl_mc_io *mc_io,
		     u32 cmd_flags,
		     u16 token,
		     enum dpni_offload type,
		     u32 *config)
{
	struct fsl_mc_command cmd = { 0 };
	struct dpni_cmd_get_offload *cmd_params;
	struct dpni_rsp_get_offload *rsp_params;
	int err;

	/* prepare command */
	cmd.header = FUNC1(DPNI_CMDID_GET_OFFLOAD,
					  cmd_flags,
					  token);
	cmd_params = (struct dpni_cmd_get_offload *)cmd.params;
	cmd_params->dpni_offload = type;

	/* send command to mc*/
	err = FUNC2(mc_io, &cmd);
	if (err)
		return err;

	/* retrieve response parameters */
	rsp_params = (struct dpni_rsp_get_offload *)cmd.params;
	*config = FUNC0(rsp_params->config);

	return 0;
}