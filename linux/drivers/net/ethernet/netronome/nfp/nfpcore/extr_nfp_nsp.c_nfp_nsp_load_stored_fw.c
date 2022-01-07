
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_nsp_command_arg {int (* error_cb ) (struct nfp_nsp*,int) ;int code; } ;
struct nfp_nsp {int dummy; } ;


 int SPCODE_FW_STORED ;
 int __nfp_nsp_command (struct nfp_nsp*,struct nfp_nsp_command_arg const*) ;
 int nfp_nsp_load_fw_extended_msg (struct nfp_nsp*,int) ;

int nfp_nsp_load_stored_fw(struct nfp_nsp *state)
{
 const struct nfp_nsp_command_arg arg = {
  .code = SPCODE_FW_STORED,
  .error_cb = nfp_nsp_load_fw_extended_msg,
 };
 int ret;

 ret = __nfp_nsp_command(state, &arg);
 if (ret < 0)
  return ret;

 nfp_nsp_load_fw_extended_msg(state, ret);
 return 0;
}
