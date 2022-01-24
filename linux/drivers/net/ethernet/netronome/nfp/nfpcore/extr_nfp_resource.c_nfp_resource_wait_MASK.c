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
struct nfp_resource {int dummy; } ;
struct nfp_cpp {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int ERESTARTSYS ; 
 int ETIMEDOUT ; 
 unsigned int HZ ; 
 int /*<<< orphan*/  FUNC0 (struct nfp_resource*) ; 
 unsigned int NFP_MUTEX_WAIT_FIRST_WARN ; 
 unsigned int NFP_MUTEX_WAIT_NEXT_WARN ; 
 int FUNC1 (struct nfp_resource*) ; 
 unsigned int jiffies ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct nfp_cpp*,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct nfp_cpp*,char*,char const*) ; 
 struct nfp_resource* FUNC5 (struct nfp_cpp*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct nfp_resource*) ; 
 scalar_t__ FUNC7 (unsigned long) ; 

int FUNC8(struct nfp_cpp *cpp, const char *name, unsigned int secs)
{
	unsigned long warn_at = jiffies + NFP_MUTEX_WAIT_FIRST_WARN * HZ;
	unsigned long err_at = jiffies + secs * HZ;
	struct nfp_resource *res;

	while (true) {
		res = FUNC5(cpp, name);
		if (!FUNC0(res)) {
			FUNC6(res);
			return 0;
		}

		if (FUNC1(res) != -ENOENT) {
			FUNC3(cpp, "error waiting for resource %s: %ld\n",
				name, FUNC1(res));
			return FUNC1(res);
		}
		if (FUNC7(err_at)) {
			FUNC3(cpp, "timeout waiting for resource %s\n", name);
			return -ETIMEDOUT;
		}
		if (FUNC7(warn_at)) {
			warn_at = jiffies + NFP_MUTEX_WAIT_NEXT_WARN * HZ;
			FUNC4(cpp, "waiting for NFP resource %s\n", name);
		}
		if (FUNC2(10)) {
			FUNC3(cpp, "wait for resource %s interrupted\n",
				name);
			return -ERESTARTSYS;
		}
	}
}