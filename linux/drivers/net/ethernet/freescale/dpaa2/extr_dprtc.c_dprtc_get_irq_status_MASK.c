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
struct dprtc_rsp_get_irq_status {int /*<<< orphan*/  status; } ;
struct dprtc_cmd_get_irq_status {int /*<<< orphan*/  irq_index; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPRTC_CMDID_GET_IRQ_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct fsl_mc_io*,struct fsl_mc_command*) ; 

int FUNC4(struct fsl_mc_io *mc_io,
			 u32 cmd_flags,
			 u16 token,
			 u8 irq_index,
			 u32 *status)
{
	struct dprtc_cmd_get_irq_status *cmd_params;
	struct dprtc_rsp_get_irq_status *rsp_params;
	struct fsl_mc_command cmd = { 0 };
	int err;

	cmd.header = FUNC2(DPRTC_CMDID_GET_IRQ_STATUS,
					  cmd_flags,
					  token);
	cmd_params = (struct dprtc_cmd_get_irq_status *)cmd.params;
	cmd_params->status = FUNC0(*status);
	cmd_params->irq_index = irq_index;

	err = FUNC3(mc_io, &cmd);
	if (err)
		return err;

	rsp_params = (struct dprtc_rsp_get_irq_status *)cmd.params;
	*status = FUNC1(rsp_params->status);

	return 0;
}