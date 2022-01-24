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
struct nfp_pf {int /*<<< orphan*/  app; } ;
struct nfp_net {scalar_t__ port; int /*<<< orphan*/  debugfs_dir; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct nfp_net*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct nfp_net*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct nfp_net*) ; 

__attribute__((used)) static void FUNC6(struct nfp_pf *pf, struct nfp_net *nn)
{
	if (FUNC5(nn))
		FUNC0(pf->app, nn);
	if (nn->port)
		FUNC1(nn->port);
	FUNC4(&nn->debugfs_dir);
	FUNC3(nn);
	if (nn->port)
		FUNC2(nn->port);
}