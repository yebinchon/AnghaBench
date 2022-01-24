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
struct nfp_resource {int /*<<< orphan*/  mutex; } ;
struct nfp_cpp_mutex {int dummy; } ;
struct nfp_cpp {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct nfp_cpp_mutex*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nfp_cpp_mutex*) ; 
 int FUNC4 (struct nfp_cpp*,struct nfp_resource*) ; 

__attribute__((used)) static int
FUNC5(struct nfp_cpp *cpp, struct nfp_resource *res,
			 struct nfp_cpp_mutex *dev_mutex)
{
	int err;

	if (FUNC1(dev_mutex))
		return -EINVAL;

	err = FUNC4(cpp, res);
	if (err)
		goto err_unlock_dev;

	err = FUNC2(res->mutex);
	if (err)
		goto err_res_mutex_free;

	FUNC3(dev_mutex);

	return 0;

err_res_mutex_free:
	FUNC0(res->mutex);
err_unlock_dev:
	FUNC3(dev_mutex);

	return err;
}