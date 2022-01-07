
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct fsl_mc_io {int dummy; } ;
struct fsl_mc_command {scalar_t__ params; int header; int member_0; } ;
struct dpni_cmd_set_buffer_layout {int qtype; void* tail_room; void* head_room; void* data_align; void* private_data_size; int flags; void* options; } ;
struct dpni_buffer_layout {int data_tail_room; int data_head_room; int data_align; int private_data_size; int pass_frame_status; int pass_parser_result; int pass_timestamp; int options; } ;
typedef enum dpni_queue_type { ____Placeholder_dpni_queue_type } dpni_queue_type ;


 int DPNI_CMDID_SET_BUFFER_LAYOUT ;
 int PASS_FS ;
 int PASS_PR ;
 int PASS_TS ;
 void* cpu_to_le16 (int ) ;
 int dpni_set_field (int ,int ,int ) ;
 int mc_encode_cmd_header (int ,int ,int ) ;
 int mc_send_command (struct fsl_mc_io*,struct fsl_mc_command*) ;

int dpni_set_buffer_layout(struct fsl_mc_io *mc_io,
      u32 cmd_flags,
      u16 token,
      enum dpni_queue_type qtype,
      const struct dpni_buffer_layout *layout)
{
 struct fsl_mc_command cmd = { 0 };
 struct dpni_cmd_set_buffer_layout *cmd_params;


 cmd.header = mc_encode_cmd_header(DPNI_CMDID_SET_BUFFER_LAYOUT,
       cmd_flags,
       token);
 cmd_params = (struct dpni_cmd_set_buffer_layout *)cmd.params;
 cmd_params->qtype = qtype;
 cmd_params->options = cpu_to_le16(layout->options);
 dpni_set_field(cmd_params->flags, PASS_TS, layout->pass_timestamp);
 dpni_set_field(cmd_params->flags, PASS_PR, layout->pass_parser_result);
 dpni_set_field(cmd_params->flags, PASS_FS, layout->pass_frame_status);
 cmd_params->private_data_size = cpu_to_le16(layout->private_data_size);
 cmd_params->data_align = cpu_to_le16(layout->data_align);
 cmd_params->head_room = cpu_to_le16(layout->data_head_room);
 cmd_params->tail_room = cpu_to_le16(layout->data_tail_room);


 return mc_send_command(mc_io, &cmd);
}
