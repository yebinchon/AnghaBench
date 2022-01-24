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
typedef  size_t u32 ;
struct nfp_pf {int /*<<< orphan*/  cpp; } ;
struct nfp_nsp {int dummy; } ;
struct nfp_devlink_param_u8_arg {char* hwinfo_name; int* dl_to_hi; } ;
struct TYPE_2__ {size_t vu8; } ;
struct devlink_param_gset_ctx {TYPE_1__ val; } ;
struct devlink {int dummy; } ;
typedef  int /*<<< orphan*/  hwinfo ;

/* Variables and functions */
 size_t FUNC0 (struct nfp_devlink_param_u8_arg*) ; 
 int EOPNOTSUPP ; 
 scalar_t__ FUNC1 (struct nfp_nsp*) ; 
 int FUNC2 (struct nfp_nsp*) ; 
 struct nfp_pf* FUNC3 (struct devlink*) ; 
 struct nfp_devlink_param_u8_arg* nfp_devlink_u8_args ; 
 int /*<<< orphan*/  FUNC4 (struct nfp_nsp*) ; 
 int FUNC5 (struct nfp_nsp*,char*,int) ; 
 struct nfp_nsp* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,char*,int) ; 

__attribute__((used)) static int
FUNC9(struct devlink *devlink, u32 id,
			 struct devlink_param_gset_ctx *ctx)
{
	const struct nfp_devlink_param_u8_arg *arg;
	struct nfp_pf *pf = FUNC3(devlink);
	struct nfp_nsp *nsp;
	char hwinfo[32];
	int err;

	if (id >= FUNC0(nfp_devlink_u8_args))
		return -EOPNOTSUPP;

	arg = &nfp_devlink_u8_args[id];

	nsp = FUNC6(pf->cpp);
	if (FUNC1(nsp)) {
		err = FUNC2(nsp);
		FUNC7(pf->cpp, "can't access NSP: %d\n", err);
		return err;
	}

	/* Note the value has already been validated. */
	FUNC8(hwinfo, sizeof(hwinfo), "%s=%u",
		 arg->hwinfo_name, arg->dl_to_hi[ctx->val.vu8]);
	err = FUNC5(nsp, hwinfo, sizeof(hwinfo));
	if (err) {
		FUNC7(pf->cpp, "HWinfo set failed: %d\n", err);
		goto exit_close_nsp;
	}

exit_close_nsp:
	FUNC4(nsp);
	return err;
}