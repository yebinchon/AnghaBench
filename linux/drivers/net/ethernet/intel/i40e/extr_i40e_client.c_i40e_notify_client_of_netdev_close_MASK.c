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
struct i40e_vsi {struct i40e_pf* back; } ;
struct i40e_pf {TYPE_1__* pdev; struct i40e_client_instance* cinst; } ;
struct i40e_client_instance {int /*<<< orphan*/  lan_info; int /*<<< orphan*/  state; TYPE_3__* client; } ;
struct TYPE_6__ {TYPE_2__* ops; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* close ) (int /*<<< orphan*/ *,TYPE_3__*,int) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  __I40E_CLIENT_INSTANCE_OPENED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_3__*,int) ; 

void FUNC4(struct i40e_vsi *vsi, bool reset)
{
	struct i40e_pf *pf = vsi->back;
	struct i40e_client_instance *cdev = pf->cinst;

	if (!cdev || !cdev->client)
		return;
	if (!cdev->client->ops || !cdev->client->ops->close) {
		FUNC1(&vsi->back->pdev->dev,
			"Cannot locate client instance close routine\n");
		return;
	}
	cdev->client->ops->close(&cdev->lan_info, cdev->client, reset);
	FUNC0(__I40E_CLIENT_INSTANCE_OPENED, &cdev->state);
	FUNC2(&cdev->lan_info);
}