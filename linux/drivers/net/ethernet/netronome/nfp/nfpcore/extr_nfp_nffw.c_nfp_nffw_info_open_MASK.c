#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u32 ;
struct nfp_nffw_info_data {int dummy; } ;
struct nfp_nffw_info {int /*<<< orphan*/  res; struct nfp_cpp* cpp; struct nfp_nffw_info_data fwinf; } ;
struct nfp_cpp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct nfp_nffw_info* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ NFFW_INFO_VERSION_CURRENT ; 
 int /*<<< orphan*/  NFP_RESOURCE_NFP_NFFW ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_nffw_info*) ; 
 struct nfp_nffw_info* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nfp_nffw_info_data*) ; 
 scalar_t__ FUNC5 (struct nfp_nffw_info_data*) ; 
 int FUNC6 (struct nfp_cpp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nfp_nffw_info_data*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct nfp_cpp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 

struct nfp_nffw_info *FUNC12(struct nfp_cpp *cpp)
{
	struct nfp_nffw_info_data *fwinf;
	struct nfp_nffw_info *state;
	u32 info_ver;
	int err;

	state = FUNC3(sizeof(*state), GFP_KERNEL);
	if (!state)
		return FUNC0(-ENOMEM);

	state->res = FUNC7(cpp, NFP_RESOURCE_NFP_NFFW);
	if (FUNC1(state->res))
		goto err_free;

	fwinf = &state->fwinf;

	if (sizeof(*fwinf) > FUNC11(state->res))
		goto err_release;

	err = FUNC6(cpp, FUNC9(state->res),
			   FUNC8(state->res),
			   fwinf, sizeof(*fwinf));
	if (err < (int)sizeof(*fwinf))
		goto err_release;

	if (!FUNC4(fwinf))
		goto err_release;

	info_ver = FUNC5(fwinf);
	if (info_ver > NFFW_INFO_VERSION_CURRENT)
		goto err_release;

	state->cpp = cpp;
	return state;

err_release:
	FUNC10(state->res);
err_free:
	FUNC2(state);
	return FUNC0(-EIO);
}