
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_nsp_command_arg {int code; } ;
struct nfp_nsp {int dummy; } ;


 int SPCODE_FW_LOADED ;
 int __nfp_nsp_command (struct nfp_nsp*,struct nfp_nsp_command_arg const*) ;

int nfp_nsp_fw_loaded(struct nfp_nsp *state)
{
 const struct nfp_nsp_command_arg arg = {
  .code = SPCODE_FW_LOADED,
 };

 return __nfp_nsp_command(state, &arg);
}
