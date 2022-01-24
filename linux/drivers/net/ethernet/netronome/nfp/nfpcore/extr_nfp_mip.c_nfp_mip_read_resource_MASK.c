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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct nfp_nffw_info {int dummy; } ;
struct nfp_mip {int dummy; } ;
struct nfp_cpp {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nfp_nffw_info*) ; 
 int FUNC1 (struct nfp_nffw_info*) ; 
 int FUNC2 (struct nfp_cpp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nfp_mip*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfp_nffw_info*) ; 
 int FUNC4 (struct nfp_nffw_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct nfp_nffw_info* FUNC5 (struct nfp_cpp*) ; 

__attribute__((used)) static int FUNC6(struct nfp_cpp *cpp, struct nfp_mip *mip)
{
	struct nfp_nffw_info *nffw_info;
	u32 cpp_id;
	u64 addr;
	int err;

	nffw_info = FUNC5(cpp);
	if (FUNC0(nffw_info))
		return FUNC1(nffw_info);

	err = FUNC4(nffw_info, &cpp_id, &addr);
	if (err)
		goto exit_close_nffw;

	err = FUNC2(cpp, cpp_id, addr, mip);
exit_close_nffw:
	FUNC3(nffw_info);
	return err;
}