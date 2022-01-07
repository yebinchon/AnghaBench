
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct fsl_mc_io {int dummy; } ;
struct fsl_mc_command {scalar_t__ params; int header; int member_0; } ;
struct dpni_rsp_get_buffer_layout {int tail_room; int head_room; int data_align; int private_data_size; int flags; } ;
struct dpni_cmd_get_buffer_layout {int qtype; } ;
struct dpni_buffer_layout {void* data_tail_room; void* data_head_room; void* data_align; void* private_data_size; void* pass_frame_status; void* pass_parser_result; void* pass_timestamp; } ;
typedef enum dpni_queue_type { ____Placeholder_dpni_queue_type } dpni_queue_type ;


 int DPNI_CMDID_GET_BUFFER_LAYOUT ;
 int PASS_FS ;
 int PASS_PR ;
 int PASS_TS ;
 void* dpni_get_field (int ,int ) ;
 void* le16_to_cpu (int ) ;
 int mc_encode_cmd_header (int ,int ,int ) ;
 int mc_send_command (struct fsl_mc_io*,struct fsl_mc_command*) ;

int dpni_get_buffer_layout(struct fsl_mc_io *mc_io,
      u32 cmd_flags,
      u16 token,
      enum dpni_queue_type qtype,
      struct dpni_buffer_layout *layout)
{
 struct fsl_mc_command cmd = { 0 };
 struct dpni_cmd_get_buffer_layout *cmd_params;
 struct dpni_rsp_get_buffer_layout *rsp_params;
 int err;


 cmd.header = mc_encode_cmd_header(DPNI_CMDID_GET_BUFFER_LAYOUT,
       cmd_flags,
       token);
 cmd_params = (struct dpni_cmd_get_buffer_layout *)cmd.params;
 cmd_params->qtype = qtype;


 err = mc_send_command(mc_io, &cmd);
 if (err)
  return err;


 rsp_params = (struct dpni_rsp_get_buffer_layout *)cmd.params;
 layout->pass_timestamp = dpni_get_field(rsp_params->flags, PASS_TS);
 layout->pass_parser_result = dpni_get_field(rsp_params->flags, PASS_PR);
 layout->pass_frame_status = dpni_get_field(rsp_params->flags, PASS_FS);
 layout->private_data_size = le16_to_cpu(rsp_params->private_data_size);
 layout->data_align = le16_to_cpu(rsp_params->data_align);
 layout->data_head_room = le16_to_cpu(rsp_params->head_room);
 layout->data_tail_room = le16_to_cpu(rsp_params->tail_room);

 return 0;
}
