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
typedef  scalar_t__ u64 ;
struct nfp_resource_entry {int dummy; } ;
struct nfp_cpp_mutex {int dummy; } ;
struct nfp_cpp {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ NFP_RESOURCE_TBL_BASE ; 
 int NFP_RESOURCE_TBL_ENTRIES ; 
 int /*<<< orphan*/  NFP_RESOURCE_TBL_KEY ; 
 int /*<<< orphan*/  NFP_RESOURCE_TBL_TARGET ; 
 struct nfp_cpp_mutex* FUNC0 (struct nfp_cpp*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_cpp_mutex*) ; 
 scalar_t__ FUNC2 (struct nfp_cpp_mutex*) ; 
 int FUNC3 (struct nfp_cpp*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct nfp_cpp_mutex*) ; 
 int /*<<< orphan*/  FUNC5 (struct nfp_cpp*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct nfp_cpp*,char*,...) ; 

int FUNC7(struct nfp_cpp *cpp)
{
	struct nfp_cpp_mutex *dev_mutex;
	int i, err;

	err = FUNC3(cpp, NFP_RESOURCE_TBL_TARGET,
				    NFP_RESOURCE_TBL_BASE);
	if (err < 0) {
		FUNC5(cpp, "Error: failed to reclaim resource table mutex\n");
		return err;
	}
	if (err)
		FUNC6(cpp, "Warning: busted main resource table mutex\n");

	dev_mutex = FUNC0(cpp, NFP_RESOURCE_TBL_TARGET,
					NFP_RESOURCE_TBL_BASE,
					NFP_RESOURCE_TBL_KEY);
	if (!dev_mutex)
		return -ENOMEM;

	if (FUNC2(dev_mutex)) {
		FUNC5(cpp, "Error: failed to claim resource table mutex\n");
		FUNC1(dev_mutex);
		return -EINVAL;
	}

	/* Resource 0 is the dev_mutex, start from 1 */
	for (i = 1; i < NFP_RESOURCE_TBL_ENTRIES; i++) {
		u64 addr = NFP_RESOURCE_TBL_BASE +
			sizeof(struct nfp_resource_entry) * i;

		err = FUNC3(cpp, NFP_RESOURCE_TBL_TARGET, addr);
		if (err < 0) {
			FUNC5(cpp,
				"Error: failed to reclaim resource %d mutex\n",
				i);
			goto err_unlock;
		}
		if (err)
			FUNC6(cpp, "Warning: busted resource %d mutex\n", i);
	}

	err = 0;
err_unlock:
	FUNC4(dev_mutex);
	FUNC1(dev_mutex);

	return err;
}