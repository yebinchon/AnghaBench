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
struct nfp_devlink_param_u8_arg {char* hwinfo_name; long max_hi_val; int invalid_dl_val; int* hi_to_dl; int /*<<< orphan*/  default_hi_val; } ;
struct TYPE_2__ {int vu8; } ;
struct devlink_param_gset_ctx {TYPE_1__ val; } ;
struct devlink {int dummy; } ;
typedef  int /*<<< orphan*/  hwinfo ;

/* Variables and functions */
 size_t FUNC0 (struct nfp_devlink_param_u8_arg*) ; 
 int EOPNOTSUPP ; 
 scalar_t__ FUNC1 (struct nfp_nsp*) ; 
 int FUNC2 (struct nfp_nsp*) ; 
 struct nfp_pf* FUNC3 (struct devlink*) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ,long*) ; 
 struct nfp_devlink_param_u8_arg* nfp_devlink_u8_args ; 
 int /*<<< orphan*/  FUNC5 (struct nfp_nsp*) ; 
 int FUNC6 (struct nfp_nsp*,char*,int,int /*<<< orphan*/ ) ; 
 struct nfp_nsp* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*) ; 

__attribute__((used)) static int
FUNC10(struct devlink *devlink, u32 id,
			 struct devlink_param_gset_ctx *ctx)
{
	const struct nfp_devlink_param_u8_arg *arg;
	struct nfp_pf *pf = FUNC3(devlink);
	struct nfp_nsp *nsp;
	char hwinfo[32];
	long value;
	int err;

	if (id >= FUNC0(nfp_devlink_u8_args))
		return -EOPNOTSUPP;

	arg = &nfp_devlink_u8_args[id];

	nsp = FUNC7(pf->cpp);
	if (FUNC1(nsp)) {
		err = FUNC2(nsp);
		FUNC8(pf->cpp, "can't access NSP: %d\n", err);
		return err;
	}

	FUNC9(hwinfo, sizeof(hwinfo), arg->hwinfo_name);
	err = FUNC6(nsp, hwinfo, sizeof(hwinfo),
					     arg->default_hi_val);
	if (err) {
		FUNC8(pf->cpp, "HWinfo lookup failed: %d\n", err);
		goto exit_close_nsp;
	}

	err = FUNC4(hwinfo, 0, &value);
	if (err || value < 0 || value > arg->max_hi_val) {
		FUNC8(pf->cpp, "HWinfo '%s' value %li invalid\n",
			 arg->hwinfo_name, value);

		if (arg->invalid_dl_val >= 0)
			ctx->val.vu8 = arg->invalid_dl_val;
		else
			err = arg->invalid_dl_val;

		goto exit_close_nsp;
	}

	ctx->val.vu8 = arg->hi_to_dl[value];

exit_close_nsp:
	FUNC5(nsp);
	return err;
}