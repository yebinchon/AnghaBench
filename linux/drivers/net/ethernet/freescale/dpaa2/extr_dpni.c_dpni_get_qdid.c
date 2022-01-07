
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct fsl_mc_io {int dummy; } ;
struct fsl_mc_command {scalar_t__ params; int header; int member_0; } ;
struct dpni_rsp_get_qdid {int qdid; } ;
struct dpni_cmd_get_qdid {int qtype; } ;
typedef enum dpni_queue_type { ____Placeholder_dpni_queue_type } dpni_queue_type ;


 int DPNI_CMDID_GET_QDID ;
 int le16_to_cpu (int ) ;
 int mc_encode_cmd_header (int ,int ,int ) ;
 int mc_send_command (struct fsl_mc_io*,struct fsl_mc_command*) ;

int dpni_get_qdid(struct fsl_mc_io *mc_io,
    u32 cmd_flags,
    u16 token,
    enum dpni_queue_type qtype,
    u16 *qdid)
{
 struct fsl_mc_command cmd = { 0 };
 struct dpni_cmd_get_qdid *cmd_params;
 struct dpni_rsp_get_qdid *rsp_params;
 int err;


 cmd.header = mc_encode_cmd_header(DPNI_CMDID_GET_QDID,
       cmd_flags,
       token);
 cmd_params = (struct dpni_cmd_get_qdid *)cmd.params;
 cmd_params->qtype = qtype;


 err = mc_send_command(mc_io, &cmd);
 if (err)
  return err;


 rsp_params = (struct dpni_rsp_get_qdid *)cmd.params;
 *qdid = le16_to_cpu(rsp_params->qdid);

 return 0;
}
