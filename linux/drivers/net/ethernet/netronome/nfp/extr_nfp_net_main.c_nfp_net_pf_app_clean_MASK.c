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
struct nfp_pf {int /*<<< orphan*/ * app; int /*<<< orphan*/  lock; int /*<<< orphan*/  ctrl_vnic_bar; scalar_t__ ctrl_vnic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nfp_pf*,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct nfp_pf *pf)
{
	if (pf->ctrl_vnic) {
		FUNC5(pf, pf->ctrl_vnic);
		FUNC4(pf->ctrl_vnic_bar);
	}

	FUNC0(&pf->lock);
	FUNC2(pf->app);
	FUNC1(&pf->lock);

	FUNC3(pf->app);
	pf->app = NULL;
}