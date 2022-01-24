#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_3__ {scalar_t__ iscsi; } ;
struct TYPE_4__ {TYPE_1__ func_caps; int /*<<< orphan*/  local_dcbx_config; } ;
struct i40e_pf {int flags; TYPE_2__ hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  I40E_DEFAULT_TRAFFIC_CLASS ; 
 int I40E_FLAG_DCB_ENABLED ; 
 int I40E_FLAG_MFP_ENABLED ; 
 int I40E_FLAG_TC_MQPRIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct i40e_pf*) ; 
 int /*<<< orphan*/  FUNC2 (struct i40e_pf*) ; 

__attribute__((used)) static u8 FUNC3(struct i40e_pf *pf)
{
	if (pf->flags & I40E_FLAG_TC_MQPRIO)
		return FUNC2(pf);

	/* If neither MQPRIO nor DCB is enabled for this PF then just return
	 * default TC
	 */
	if (!(pf->flags & I40E_FLAG_DCB_ENABLED))
		return I40E_DEFAULT_TRAFFIC_CLASS;

	/* SFP mode we want PF to be enabled for all TCs */
	if (!(pf->flags & I40E_FLAG_MFP_ENABLED))
		return FUNC0(&pf->hw.local_dcbx_config);

	/* MFP enabled and iSCSI PF type */
	if (pf->hw.func_caps.iscsi)
		return FUNC1(pf);
	else
		return I40E_DEFAULT_TRAFFIC_CLASS;
}