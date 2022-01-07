
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * counter; } ;
union dpni_statistics {TYPE_1__ raw; } ;
typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct fsl_mc_io {int dummy; } ;
struct fsl_mc_command {scalar_t__ params; int header; int member_0; } ;
struct dpni_rsp_get_statistics {int * counter; } ;
struct dpni_cmd_get_statistics {int page_number; } ;


 int DPNI_CMDID_GET_STATISTICS ;
 int DPNI_STATISTICS_CNT ;
 int le64_to_cpu (int ) ;
 int mc_encode_cmd_header (int ,int ,int ) ;
 int mc_send_command (struct fsl_mc_io*,struct fsl_mc_command*) ;

int dpni_get_statistics(struct fsl_mc_io *mc_io,
   u32 cmd_flags,
   u16 token,
   u8 page,
   union dpni_statistics *stat)
{
 struct fsl_mc_command cmd = { 0 };
 struct dpni_cmd_get_statistics *cmd_params;
 struct dpni_rsp_get_statistics *rsp_params;
 int i, err;


 cmd.header = mc_encode_cmd_header(DPNI_CMDID_GET_STATISTICS,
       cmd_flags,
       token);
 cmd_params = (struct dpni_cmd_get_statistics *)cmd.params;
 cmd_params->page_number = page;


 err = mc_send_command(mc_io, &cmd);
 if (err)
  return err;


 rsp_params = (struct dpni_rsp_get_statistics *)cmd.params;
 for (i = 0; i < DPNI_STATISTICS_CNT; i++)
  stat->raw.counter[i] = le64_to_cpu(rsp_params->counter[i]);

 return 0;
}
