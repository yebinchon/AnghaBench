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
struct i40e_vsi {int /*<<< orphan*/ * state; scalar_t__ netdev_registered; } ;
struct i40e_pf {size_t lan_vsi; int /*<<< orphan*/ * state; struct i40e_client_instance* cinst; struct i40e_vsi** vsi; } ;
struct i40e_client_instance {int /*<<< orphan*/  lan_info; int /*<<< orphan*/  state; } ;
struct i40e_client {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* open ) (int /*<<< orphan*/ *,struct i40e_client*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  I40E_CLIENT_VSI_FLAG_TCP_ENABLE ; 
 int /*<<< orphan*/  __I40E_CLIENT_INSTANCE_OPENED ; 
 int /*<<< orphan*/  __I40E_CLIENT_SERVICE_REQUESTED ; 
 int /*<<< orphan*/  __I40E_CONFIG_BUSY ; 
 int /*<<< orphan*/  __I40E_DOWN ; 
 int /*<<< orphan*/  __I40E_VSI_DOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct i40e_pf*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct i40e_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct i40e_client* registered_client ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct i40e_client*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC7(struct i40e_pf *pf)
{
	struct i40e_client *client = registered_client;
	struct i40e_client_instance *cdev;
	struct i40e_vsi *vsi = pf->vsi[pf->lan_vsi];
	int ret = 0;

	if (!FUNC5(__I40E_CLIENT_SERVICE_REQUESTED, pf->state))
		return;
	cdev = pf->cinst;

	/* If we're down or resetting, just bail */
	if (FUNC6(__I40E_DOWN, pf->state) ||
	    FUNC6(__I40E_CONFIG_BUSY, pf->state))
		return;

	if (!client || !cdev)
		return;

	/* Here we handle client opens. If the client is down, and
	 * the netdev is registered, then open the client.
	 */
	if (!FUNC6(__I40E_CLIENT_INSTANCE_OPENED, &cdev->state)) {
		if (vsi->netdev_registered &&
		    client->ops && client->ops->open) {
			FUNC3(__I40E_CLIENT_INSTANCE_OPENED, &cdev->state);
			ret = client->ops->open(&cdev->lan_info, client);
			if (ret) {
				/* Remove failed client instance */
				FUNC0(__I40E_CLIENT_INSTANCE_OPENED,
					  &cdev->state);
				FUNC1(pf);
			}
		}
	}

	/* enable/disable PE TCP_ENA flag based on netdev down/up
	 */
	if (FUNC6(__I40E_VSI_DOWN, vsi->state))
		FUNC2(&cdev->lan_info, client,
					    0, 0, 0,
					    I40E_CLIENT_VSI_FLAG_TCP_ENABLE);
	else
		FUNC2(&cdev->lan_info, client,
					    0, 0,
					    I40E_CLIENT_VSI_FLAG_TCP_ENABLE,
					    I40E_CLIENT_VSI_FLAG_TCP_ENABLE);
}