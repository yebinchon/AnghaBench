#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct qede_dev {int accept_any_vlan; int /*<<< orphan*/  cdev; TYPE_1__* ops; } ;
struct qed_update_vport_params {int accept_any_vlan; int update_accept_any_vlan_flg; scalar_t__ vport_id; } ;
struct TYPE_2__ {int (* vport_update ) (int /*<<< orphan*/ ,struct qed_update_vport_params*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qede_dev*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct qede_dev*,char*,char*) ; 
 int ENOMEM ; 
 int FUNC2 (int /*<<< orphan*/ ,struct qed_update_vport_params*) ; 
 int /*<<< orphan*/  FUNC3 (struct qed_update_vport_params*) ; 
 struct qed_update_vport_params* FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct qede_dev *edev, bool action)
{
	struct qed_update_vport_params *params;
	int rc;

	/* Proceed only if action actually needs to be performed */
	if (edev->accept_any_vlan == action)
		return 0;

	params = FUNC4(sizeof(*params));
	if (!params)
		return -ENOMEM;

	params->vport_id = 0;
	params->accept_any_vlan = action;
	params->update_accept_any_vlan_flg = 1;

	rc = edev->ops->vport_update(edev->cdev, params);
	if (rc) {
		FUNC0(edev, "Failed to %s accept-any-vlan\n",
		       action ? "enable" : "disable");
	} else {
		FUNC1(edev, "%s accept-any-vlan\n",
			action ? "enabled" : "disabled");
		edev->accept_any_vlan = action;
	}

	FUNC3(params);
	return 0;
}