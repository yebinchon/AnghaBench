#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct i40e_vsi {TYPE_2__* back; int /*<<< orphan*/  state; int /*<<< orphan*/  seid; } ;
struct i40e_mac_filter {scalar_t__ state; int /*<<< orphan*/  vlan; } ;
struct TYPE_6__ {int /*<<< orphan*/  asq_last_status; } ;
struct i40e_hw {TYPE_3__ aq; } ;
typedef  scalar_t__ i40e_status ;
struct TYPE_5__ {TYPE_1__* pdev; struct i40e_hw hw; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ I40E_FILTER_NEW ; 
 int /*<<< orphan*/  I40E_VLAN_ANY ; 
 int /*<<< orphan*/  __I40E_VSI_OVERFLOW_PROMISC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC1 (struct i40e_hw*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct i40e_hw*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct i40e_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static i40e_status
FUNC5(struct i40e_vsi *vsi, const char *vsi_name,
			  struct i40e_mac_filter *f)
{
	bool enable = f->state == I40E_FILTER_NEW;
	struct i40e_hw *hw = &vsi->back->hw;
	i40e_status aq_ret;

	if (f->vlan == I40E_VLAN_ANY) {
		aq_ret = FUNC2(hw,
						   vsi->seid,
						   enable,
						   NULL);
	} else {
		aq_ret = FUNC1(hw,
							    vsi->seid,
							    enable,
							    f->vlan,
							    NULL);
	}

	if (aq_ret) {
		FUNC4(__I40E_VSI_OVERFLOW_PROMISC, vsi->state);
		FUNC0(&vsi->back->pdev->dev,
			 "Error %s, forcing overflow promiscuous on %s\n",
			 FUNC3(hw, hw->aq.asq_last_status),
			 vsi_name);
	}

	return aq_ret;
}