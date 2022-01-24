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
struct dprtc_cmd_set_irq_enable {void* en; void* irq_index; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPRTC_CMDID_SET_IRQ_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct fsl_mc_io*,struct fsl_mc_command*) ; 

int FUNC2(struct fsl_mc_io *mc_io,
			 u32 cmd_flags,
			 u16 token,
			 u8 irq_index,
			 u8 en)
{
	struct dprtc_cmd_set_irq_enable *cmd_params;
	struct fsl_mc_command cmd = { 0 };

	cmd.header = FUNC0(DPRTC_CMDID_SET_IRQ_ENABLE,
					  cmd_flags,
					  token);
	cmd_params = (struct dprtc_cmd_set_irq_enable *)cmd.params;
	cmd_params->irq_index = irq_index;
	cmd_params->en = en;

	return FUNC1(mc_io, &cmd);
}