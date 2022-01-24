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
struct iavf_vsi {struct iavf_adapter* back; } ;
struct iavf_client_instance {int /*<<< orphan*/  state; TYPE_3__* client; int /*<<< orphan*/  lan_info; } ;
struct iavf_adapter {TYPE_1__* pdev; struct iavf_client_instance* cinst; } ;
struct TYPE_6__ {TYPE_2__* ops; } ;
struct TYPE_5__ {int (* open ) (int /*<<< orphan*/ *,TYPE_3__*) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  __IAVF_CLIENT_INSTANCE_OPENED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC4(struct iavf_vsi *vsi)
{
	struct iavf_adapter *adapter = vsi->back;
	struct iavf_client_instance *cinst = adapter->cinst;
	int ret;

	if (!cinst || !cinst->client || !cinst->client->ops ||
	    !cinst->client->ops->open) {
		FUNC0(&vsi->back->pdev->dev,
			"Cannot locate client instance open function\n");
		return;
	}
	if (!(FUNC3(__IAVF_CLIENT_INSTANCE_OPENED, &cinst->state))) {
		ret = cinst->client->ops->open(&cinst->lan_info, cinst->client);
		if (!ret)
			FUNC1(__IAVF_CLIENT_INSTANCE_OPENED, &cinst->state);
	}
}