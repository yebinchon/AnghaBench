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
typedef  void* u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct fsl_mc_io {int dummy; } ;
struct fsl_mc_command {scalar_t__ params; int /*<<< orphan*/  header; int /*<<< orphan*/  member_0; } ;
struct dpni_taildrop {int /*<<< orphan*/  threshold; int /*<<< orphan*/  units; int /*<<< orphan*/  enable; } ;
struct dpni_cmd_set_taildrop {int congestion_point; int qtype; int /*<<< orphan*/  threshold; int /*<<< orphan*/  units; int /*<<< orphan*/  enable; void* index; void* tc; } ;
typedef  enum dpni_queue_type { ____Placeholder_dpni_queue_type } dpni_queue_type ;
typedef  enum dpni_congestion_point { ____Placeholder_dpni_congestion_point } dpni_congestion_point ;

/* Variables and functions */
 int /*<<< orphan*/  DPNI_CMDID_SET_TAILDROP ; 
 int /*<<< orphan*/  ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct fsl_mc_io*,struct fsl_mc_command*) ; 

int FUNC4(struct fsl_mc_io *mc_io,
		      u32 cmd_flags,
		      u16 token,
		      enum dpni_congestion_point cg_point,
		      enum dpni_queue_type qtype,
		      u8 tc,
		      u8 index,
		      struct dpni_taildrop *taildrop)
{
	struct fsl_mc_command cmd = { 0 };
	struct dpni_cmd_set_taildrop *cmd_params;

	/* prepare command */
	cmd.header = FUNC2(DPNI_CMDID_SET_TAILDROP,
					  cmd_flags,
					  token);
	cmd_params = (struct dpni_cmd_set_taildrop *)cmd.params;
	cmd_params->congestion_point = cg_point;
	cmd_params->qtype = qtype;
	cmd_params->tc = tc;
	cmd_params->index = index;
	FUNC1(cmd_params->enable, ENABLE, taildrop->enable);
	cmd_params->units = taildrop->units;
	cmd_params->threshold = FUNC0(taildrop->threshold);

	/* send command to mc */
	return FUNC3(mc_io, &cmd);
}