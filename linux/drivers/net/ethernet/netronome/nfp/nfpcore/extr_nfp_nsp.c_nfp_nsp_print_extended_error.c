
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct nfp_nsp {int cpp; } ;
struct TYPE_3__ {scalar_t__ code; int msg; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int nfp_err (int ,char*,int ) ;
 TYPE_1__* nsp_errors ;

__attribute__((used)) static void nfp_nsp_print_extended_error(struct nfp_nsp *state, u32 ret_val)
{
 int i;

 if (!ret_val)
  return;

 for (i = 0; i < ARRAY_SIZE(nsp_errors); i++)
  if (ret_val == nsp_errors[i].code)
   nfp_err(state->cpp, "err msg: %s\n", nsp_errors[i].msg);
}
