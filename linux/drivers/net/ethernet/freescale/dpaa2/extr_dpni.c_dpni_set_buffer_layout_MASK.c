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
struct dpni_cmd_set_buffer_layout {int qtype; void* tail_room; void* head_room; void* data_align; void* private_data_size; int /*<<< orphan*/  flags; void* options; } ;
struct dpni_buffer_layout {int /*<<< orphan*/  data_tail_room; int /*<<< orphan*/  data_head_room; int /*<<< orphan*/  data_align; int /*<<< orphan*/  private_data_size; int /*<<< orphan*/  pass_frame_status; int /*<<< orphan*/  pass_parser_result; int /*<<< orphan*/  pass_timestamp; int /*<<< orphan*/  options; } ;
typedef  enum dpni_queue_type { ____Placeholder_dpni_queue_type } dpni_queue_type ;

/* Variables and functions */
 int /*<<< orphan*/  DPNI_CMDID_SET_BUFFER_LAYOUT ; 
 int /*<<< orphan*/  PASS_FS ; 
 int /*<<< orphan*/  PASS_PR ; 
 int /*<<< orphan*/  PASS_TS ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct fsl_mc_io*,struct fsl_mc_command*) ; 

int FUNC4(struct fsl_mc_io *mc_io,
			   u32 cmd_flags,
			   u16 token,
			   enum dpni_queue_type qtype,
			   const struct dpni_buffer_layout *layout)
{
	struct fsl_mc_command cmd = { 0 };
	struct dpni_cmd_set_buffer_layout *cmd_params;

	/* prepare command */
	cmd.header = FUNC2(DPNI_CMDID_SET_BUFFER_LAYOUT,
					  cmd_flags,
					  token);
	cmd_params = (struct dpni_cmd_set_buffer_layout *)cmd.params;
	cmd_params->qtype = qtype;
	cmd_params->options = FUNC0(layout->options);
	FUNC1(cmd_params->flags, PASS_TS, layout->pass_timestamp);
	FUNC1(cmd_params->flags, PASS_PR, layout->pass_parser_result);
	FUNC1(cmd_params->flags, PASS_FS, layout->pass_frame_status);
	cmd_params->private_data_size = FUNC0(layout->private_data_size);
	cmd_params->data_align = FUNC0(layout->data_align);
	cmd_params->head_room = FUNC0(layout->data_head_room);
	cmd_params->tail_room = FUNC0(layout->data_tail_room);

	/* send command to mc*/
	return FUNC3(mc_io, &cmd);
}