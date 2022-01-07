
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
struct dpni_rsp_get_queue {int qdbin; int fqid; int user_context; int flc; int flags; int dest_prio; int dest_id; } ;
struct dpni_queue_id {int qdbin; void* fqid; } ;
struct TYPE_4__ {void* value; void* stash_control; } ;
struct TYPE_3__ {void* hold_active; void* type; int priority; void* id; } ;
struct dpni_queue {void* user_context; TYPE_2__ flc; TYPE_1__ destination; } ;
struct dpni_cmd_get_queue {int qtype; void* index; void* tc; } ;
typedef enum dpni_queue_type { ____Placeholder_dpni_queue_type } dpni_queue_type ;


 int DEST_TYPE ;
 int DPNI_CMDID_GET_QUEUE ;
 int HOLD_ACTIVE ;
 int STASH_CTRL ;
 void* dpni_get_field (int ,int ) ;
 int le16_to_cpu (int ) ;
 void* le32_to_cpu (int ) ;
 void* le64_to_cpu (int ) ;
 int mc_encode_cmd_header (int ,int ,int ) ;
 int mc_send_command (struct fsl_mc_io*,struct fsl_mc_command*) ;

int dpni_get_queue(struct fsl_mc_io *mc_io,
     u32 cmd_flags,
     u16 token,
     enum dpni_queue_type qtype,
     u8 tc,
     u8 index,
     struct dpni_queue *queue,
     struct dpni_queue_id *qid)
{
 struct fsl_mc_command cmd = { 0 };
 struct dpni_cmd_get_queue *cmd_params;
 struct dpni_rsp_get_queue *rsp_params;
 int err;


 cmd.header = mc_encode_cmd_header(DPNI_CMDID_GET_QUEUE,
       cmd_flags,
       token);
 cmd_params = (struct dpni_cmd_get_queue *)cmd.params;
 cmd_params->qtype = qtype;
 cmd_params->tc = tc;
 cmd_params->index = index;


 err = mc_send_command(mc_io, &cmd);
 if (err)
  return err;


 rsp_params = (struct dpni_rsp_get_queue *)cmd.params;
 queue->destination.id = le32_to_cpu(rsp_params->dest_id);
 queue->destination.priority = rsp_params->dest_prio;
 queue->destination.type = dpni_get_field(rsp_params->flags,
       DEST_TYPE);
 queue->flc.stash_control = dpni_get_field(rsp_params->flags,
        STASH_CTRL);
 queue->destination.hold_active = dpni_get_field(rsp_params->flags,
       HOLD_ACTIVE);
 queue->flc.value = le64_to_cpu(rsp_params->flc);
 queue->user_context = le64_to_cpu(rsp_params->user_context);
 qid->fqid = le32_to_cpu(rsp_params->fqid);
 qid->qdbin = le16_to_cpu(rsp_params->qdbin);

 return 0;
}
