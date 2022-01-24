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
struct nfp_resource {int /*<<< orphan*/  name; } ;
struct nfp_cpp_mutex {int dummy; } ;
struct nfp_cpp {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int ERESTARTSYS ; 
 struct nfp_resource* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned long HZ ; 
 unsigned long NFP_MUTEX_WAIT_ERROR ; 
 unsigned long NFP_MUTEX_WAIT_FIRST_WARN ; 
 unsigned long NFP_MUTEX_WAIT_NEXT_WARN ; 
 int /*<<< orphan*/  NFP_RESOURCE_ENTRY_NAME_SZ ; 
 int /*<<< orphan*/  NFP_RESOURCE_TBL_BASE ; 
 int /*<<< orphan*/  NFP_RESOURCE_TBL_KEY ; 
 int /*<<< orphan*/  NFP_RESOURCE_TBL_TARGET ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_resource*) ; 
 struct nfp_resource* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 struct nfp_cpp_mutex* FUNC4 (struct nfp_cpp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nfp_cpp_mutex*) ; 
 int /*<<< orphan*/  FUNC6 (struct nfp_cpp*,char*,char const*) ; 
 int FUNC7 (struct nfp_cpp*,struct nfp_resource*,struct nfp_cpp_mutex*) ; 
 int /*<<< orphan*/  FUNC8 (struct nfp_cpp*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (unsigned long) ; 

struct nfp_resource *
FUNC11(struct nfp_cpp *cpp, const char *name)
{
	unsigned long warn_at = jiffies + NFP_MUTEX_WAIT_FIRST_WARN * HZ;
	unsigned long err_at = jiffies + NFP_MUTEX_WAIT_ERROR * HZ;
	struct nfp_cpp_mutex *dev_mutex;
	struct nfp_resource *res;
	int err;

	res = FUNC2(sizeof(*res), GFP_KERNEL);
	if (!res)
		return FUNC0(-ENOMEM);

	FUNC9(res->name, name, NFP_RESOURCE_ENTRY_NAME_SZ);

	dev_mutex = FUNC4(cpp, NFP_RESOURCE_TBL_TARGET,
					NFP_RESOURCE_TBL_BASE,
					NFP_RESOURCE_TBL_KEY);
	if (!dev_mutex) {
		FUNC1(res);
		return FUNC0(-ENOMEM);
	}

	for (;;) {
		err = FUNC7(cpp, res, dev_mutex);
		if (!err)
			break;
		if (err != -EBUSY)
			goto err_free;

		err = FUNC3(1);
		if (err != 0) {
			err = -ERESTARTSYS;
			goto err_free;
		}

		if (FUNC10(warn_at)) {
			warn_at = jiffies + NFP_MUTEX_WAIT_NEXT_WARN * HZ;
			FUNC8(cpp, "Warning: waiting for NFP resource %s\n",
				 name);
		}
		if (FUNC10(err_at)) {
			FUNC6(cpp, "Error: resource %s timed out\n", name);
			err = -EBUSY;
			goto err_free;
		}
	}

	FUNC5(dev_mutex);

	return res;

err_free:
	FUNC5(dev_mutex);
	FUNC1(res);
	return FUNC0(err);
}