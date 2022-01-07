
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct fsl_mc_io {int dummy; } ;
struct fsl_mc_command {scalar_t__ params; int header; int member_0; } ;
struct dpni_rsp_get_tx_data_offset {int data_offset; } ;


 int DPNI_CMDID_GET_TX_DATA_OFFSET ;
 int le16_to_cpu (int ) ;
 int mc_encode_cmd_header (int ,int ,int ) ;
 int mc_send_command (struct fsl_mc_io*,struct fsl_mc_command*) ;

int dpni_get_tx_data_offset(struct fsl_mc_io *mc_io,
       u32 cmd_flags,
       u16 token,
       u16 *data_offset)
{
 struct fsl_mc_command cmd = { 0 };
 struct dpni_rsp_get_tx_data_offset *rsp_params;
 int err;


 cmd.header = mc_encode_cmd_header(DPNI_CMDID_GET_TX_DATA_OFFSET,
       cmd_flags,
       token);


 err = mc_send_command(mc_io, &cmd);
 if (err)
  return err;


 rsp_params = (struct dpni_rsp_get_tx_data_offset *)cmd.params;
 *data_offset = le16_to_cpu(rsp_params->data_offset);

 return 0;
}
