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
struct nfp_pf {int /*<<< orphan*/  ctrl_vnic; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_pf*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nfp_pf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct nfp_pf *pf)
{
	int err;

	if (!pf->ctrl_vnic)
		return 0;
	err = FUNC2(pf, pf->ctrl_vnic, 0);
	if (err)
		return err;

	err = FUNC0(pf->ctrl_vnic);
	if (err)
		goto err_clean_ctrl;

	return 0;

err_clean_ctrl:
	FUNC1(pf, pf->ctrl_vnic);
	return err;
}