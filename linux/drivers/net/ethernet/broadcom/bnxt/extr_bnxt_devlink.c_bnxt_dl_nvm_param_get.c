
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct hwrm_nvm_get_variable_input {int member_0; } ;
struct TYPE_2__ {int vbool; } ;
struct devlink_param_gset_ctx {TYPE_1__ val; } ;
struct devlink {int dummy; } ;
struct bnxt {int dummy; } ;
typedef int req ;


 int BNXT_DEVLINK_PARAM_ID_GRE_VER_CHECK ;
 int HWRM_NVM_GET_VARIABLE ;
 struct bnxt* bnxt_get_bp_from_dl (struct devlink*) ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt*,struct hwrm_nvm_get_variable_input*,int ,int,int) ;
 int bnxt_hwrm_nvm_req (struct bnxt*,int ,struct hwrm_nvm_get_variable_input*,int,TYPE_1__*) ;

__attribute__((used)) static int bnxt_dl_nvm_param_get(struct devlink *dl, u32 id,
     struct devlink_param_gset_ctx *ctx)
{
 struct hwrm_nvm_get_variable_input req = {0};
 struct bnxt *bp = bnxt_get_bp_from_dl(dl);
 int rc;

 bnxt_hwrm_cmd_hdr_init(bp, &req, HWRM_NVM_GET_VARIABLE, -1, -1);
 rc = bnxt_hwrm_nvm_req(bp, id, &req, sizeof(req), &ctx->val);
 if (!rc)
  if (id == BNXT_DEVLINK_PARAM_ID_GRE_VER_CHECK)
   ctx->val.vbool = !ctx->val.vbool;

 return rc;
}
