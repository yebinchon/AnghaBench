#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct hwrm_nvm_set_variable_input {int /*<<< orphan*/  member_0; } ;
struct TYPE_2__ {int vbool; } ;
struct devlink_param_gset_ctx {TYPE_1__ val; } ;
struct devlink {int dummy; } ;
struct bnxt {int dummy; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int /*<<< orphan*/  BNXT_DEVLINK_PARAM_ID_GRE_VER_CHECK ; 
 int /*<<< orphan*/  HWRM_NVM_SET_VARIABLE ; 
 struct bnxt* FUNC0 (struct devlink*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt*,struct hwrm_nvm_set_variable_input*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (struct bnxt*,int /*<<< orphan*/ ,struct hwrm_nvm_set_variable_input*,int,TYPE_1__*) ; 

__attribute__((used)) static int FUNC3(struct devlink *dl, u32 id,
				 struct devlink_param_gset_ctx *ctx)
{
	struct hwrm_nvm_set_variable_input req = {0};
	struct bnxt *bp = FUNC0(dl);

	FUNC1(bp, &req, HWRM_NVM_SET_VARIABLE, -1, -1);

	if (id == BNXT_DEVLINK_PARAM_ID_GRE_VER_CHECK)
		ctx->val.vbool = !ctx->val.vbool;

	return FUNC2(bp, id, &req, sizeof(req), &ctx->val);
}