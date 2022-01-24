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
struct nfp_mip {scalar_t__ signature; scalar_t__ mip_version; } ;
struct nfp_cpp {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 scalar_t__ NFP_MIP_SIGNATURE ; 
 scalar_t__ NFP_MIP_VERSION ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (struct nfp_cpp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nfp_mip*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_cpp*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nfp_cpp*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct nfp_cpp *cpp, u32 cpp_id, u64 addr, struct nfp_mip *mip)
{
	int ret;

	ret = FUNC1(cpp, cpp_id, addr, mip, sizeof(*mip));
	if (ret != sizeof(*mip)) {
		FUNC2(cpp, "Failed to read MIP data (%d, %zu)\n",
			ret, sizeof(*mip));
		return -EIO;
	}
	if (mip->signature != NFP_MIP_SIGNATURE) {
		FUNC3(cpp, "Incorrect MIP signature (0x%08x)\n",
			 FUNC0(mip->signature));
		return -EINVAL;
	}
	if (mip->mip_version != NFP_MIP_VERSION) {
		FUNC3(cpp, "Unsupported MIP version (%d)\n",
			 FUNC0(mip->mip_version));
		return -EINVAL;
	}

	return 0;
}