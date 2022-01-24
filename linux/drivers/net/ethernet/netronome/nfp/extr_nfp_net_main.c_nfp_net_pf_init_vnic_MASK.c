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
struct nfp_pf {int /*<<< orphan*/  app; int /*<<< orphan*/  ddir; } ;
struct nfp_net {unsigned int id; scalar_t__ port; int /*<<< orphan*/  debugfs_dir; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct nfp_net*) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct nfp_net*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct nfp_net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct nfp_net*) ; 
 int FUNC9 (struct nfp_net*) ; 
 scalar_t__ FUNC10 (struct nfp_net*) ; 

__attribute__((used)) static int
FUNC11(struct nfp_pf *pf, struct nfp_net *nn, unsigned int id)
{
	int err;

	nn->id = id;

	if (nn->port) {
		err = FUNC1(pf->app, nn->port);
		if (err)
			return err;
	}

	err = FUNC9(nn);
	if (err)
		goto err_devlink_port_clean;

	FUNC7(nn, pf->ddir);

	if (nn->port)
		FUNC3(nn->port);

	FUNC8(nn);

	if (FUNC10(nn)) {
		err = FUNC0(pf->app, nn);
		if (err)
			goto err_devlink_port_type_clean;
	}

	return 0;

err_devlink_port_type_clean:
	if (nn->port)
		FUNC2(nn->port);
	FUNC6(&nn->debugfs_dir);
	FUNC5(nn);
err_devlink_port_clean:
	if (nn->port)
		FUNC4(nn->port);
	return err;
}