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
typedef  int /*<<< orphan*/  u32 ;
struct qlcnic_dcb_capability {int dcb_capability; scalar_t__ ets_capability; scalar_t__ tsa_capability; } ;
struct qlcnic_dcb_cfg {struct qlcnic_dcb_capability capability; } ;
struct qlcnic_dcb {int /*<<< orphan*/  state; struct qlcnic_dcb_cfg* cfg; } ;

/* Variables and functions */
 int DCB_CAP_DCBX_LLD_MANAGED ; 
 int DCB_CAP_DCBX_VER_CEE ; 
 int /*<<< orphan*/  QLCNIC_DCB_STATE ; 
 int FUNC0 (struct qlcnic_dcb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct qlcnic_dcb *dcb)
{
	struct qlcnic_dcb_cfg *cfg = dcb->cfg;
	struct qlcnic_dcb_capability *cap;
	u32 mbx_out;
	int err;

	err = FUNC0(dcb, &mbx_out);
	if (err)
		return err;

	cap = &cfg->capability;
	cap->dcb_capability = DCB_CAP_DCBX_VER_CEE | DCB_CAP_DCBX_LLD_MANAGED;

	if (cap->dcb_capability && cap->tsa_capability && cap->ets_capability)
		FUNC1(QLCNIC_DCB_STATE, &dcb->state);

	return err;
}