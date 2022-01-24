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
struct nfp_pf {int /*<<< orphan*/  num_vnics; int /*<<< orphan*/  app; } ;
struct nfp_net {int /*<<< orphan*/  vnic_list; int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct nfp_net*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_net*) ; 
 scalar_t__ FUNC3 (struct nfp_net*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct nfp_pf *pf, struct nfp_net *nn)
{
	if (FUNC3(nn))
		FUNC1(pf->app, nn);
	FUNC4(nn->port);
	FUNC0(&nn->vnic_list);
	pf->num_vnics--;
	FUNC2(nn);
}