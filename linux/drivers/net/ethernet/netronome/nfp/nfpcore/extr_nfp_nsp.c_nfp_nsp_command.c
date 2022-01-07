
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct nfp_nsp_command_arg {int code; } ;
struct nfp_nsp {int dummy; } ;


 int __nfp_nsp_command (struct nfp_nsp*,struct nfp_nsp_command_arg const*) ;

__attribute__((used)) static int nfp_nsp_command(struct nfp_nsp *state, u16 code)
{
 const struct nfp_nsp_command_arg arg = {
  .code = code,
 };

 return __nfp_nsp_command(state, &arg);
}
