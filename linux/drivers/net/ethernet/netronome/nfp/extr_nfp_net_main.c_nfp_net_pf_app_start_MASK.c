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
struct nfp_pf {int /*<<< orphan*/  app; scalar_t__ num_vfs; int /*<<< orphan*/  ctrl_vnic; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct nfp_pf*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfp_pf*) ; 

__attribute__((used)) static int FUNC5(struct nfp_pf *pf)
{
	int err;

	err = FUNC3(pf);
	if (err)
		return err;

	err = FUNC1(pf->app, pf->ctrl_vnic);
	if (err)
		goto err_ctrl_stop;

	if (pf->num_vfs) {
		err = FUNC0(pf->app, pf->num_vfs);
		if (err)
			goto err_app_stop;
	}

	return 0;

err_app_stop:
	FUNC2(pf->app);
err_ctrl_stop:
	FUNC4(pf);
	return err;
}