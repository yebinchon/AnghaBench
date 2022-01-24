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
struct nfp_pf {int dummy; } ;
struct devlink {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct devlink*) ; 
 int FUNC2 (struct devlink*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfp_devlink_params ; 
 int FUNC3 (struct nfp_pf*) ; 
 struct devlink* FUNC4 (struct nfp_pf*) ; 

int FUNC5(struct nfp_pf *pf)
{
	struct devlink *devlink = FUNC4(pf);
	int err;

	err = FUNC3(pf);
	if (err <= 0)
		return err;

	err = FUNC2(devlink, nfp_devlink_params,
				      FUNC0(nfp_devlink_params));
	if (err)
		return err;

	FUNC1(devlink);
	return 0;
}