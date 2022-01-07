
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u8 ;
typedef int u32 ;
typedef int u16 ;
struct fsl_mc_io {int dummy; } ;
struct fsl_mc_command {scalar_t__ params; int header; int member_0; } ;
struct TYPE_4__ {int value; int stash_control; } ;
struct TYPE_3__ {int hold_active; int type; int priority; int id; } ;
struct dpni_queue {int user_context; TYPE_2__ flc; TYPE_1__ destination; } ;
struct dpni_cmd_set_queue {int qtype; void* user_context; void* flc; int flags; int dest_prio; int dest_id; void* options; void* index; void* tc; } ;
typedef enum dpni_queue_type { ____Placeholder_dpni_queue_type } dpni_queue_type ;


 int DEST_TYPE ;
 int DPNI_CMDID_SET_QUEUE ;
 int HOLD_ACTIVE ;
 int STASH_CTRL ;
 int cpu_to_le32 (int ) ;
 void* cpu_to_le64 (int ) ;
 int dpni_set_field (int ,int ,int ) ;
 int mc_encode_cmd_header (int ,int ,int ) ;
 int mc_send_command (struct fsl_mc_io*,struct fsl_mc_command*) ;

int dpni_set_queue(struct fsl_mc_io *mc_io,
     u32 cmd_flags,
     u16 token,
     enum dpni_queue_type qtype,
     u8 tc,
     u8 index,
     u8 options,
     const struct dpni_queue *queue)
{
 struct fsl_mc_command cmd = { 0 };
 struct dpni_cmd_set_queue *cmd_params;


 cmd.header = mc_encode_cmd_header(DPNI_CMDID_SET_QUEUE,
       cmd_flags,
       token);
 cmd_params = (struct dpni_cmd_set_queue *)cmd.params;
 cmd_params->qtype = qtype;
 cmd_params->tc = tc;
 cmd_params->index = index;
 cmd_params->options = options;
 cmd_params->dest_id = cpu_to_le32(queue->destination.id);
 cmd_params->dest_prio = queue->destination.priority;
 dpni_set_field(cmd_params->flags, DEST_TYPE, queue->destination.type);
 dpni_set_field(cmd_params->flags, STASH_CTRL, queue->flc.stash_control);
 dpni_set_field(cmd_params->flags, HOLD_ACTIVE,
         queue->destination.hold_active);
 cmd_params->flc = cpu_to_le64(queue->flc.value);
 cmd_params->user_context = cpu_to_le64(queue->user_context);


 return mc_send_command(mc_io, &cmd);
}
