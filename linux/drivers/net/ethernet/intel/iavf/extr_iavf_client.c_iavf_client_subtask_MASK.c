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
struct iavf_client_instance {int /*<<< orphan*/  state; int /*<<< orphan*/  lan_info; } ;
struct iavf_client {TYPE_2__* ops; int /*<<< orphan*/  name; } ;
struct iavf_adapter {scalar_t__ state; TYPE_1__* pdev; } ;
struct TYPE_4__ {int (* open ) (int /*<<< orphan*/ *,struct iavf_client*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  __IAVF_CLIENT_INSTANCE_OPENED ; 
 scalar_t__ __IAVF_DOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct iavf_client_instance* FUNC1 (struct iavf_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct iavf_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct iavf_client*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct iavf_client* vf_registered_client ; 

void FUNC6(struct iavf_adapter *adapter)
{
	struct iavf_client *client = vf_registered_client;
	struct iavf_client_instance *cinst;
	int ret = 0;

	if (adapter->state < __IAVF_DOWN)
		return;

	/* first check client is registered */
	if (!client)
		return;

	/* Add the client instance to the instance list */
	cinst = FUNC1(adapter);
	if (!cinst)
		return;

	FUNC0(&adapter->pdev->dev, "Added instance of Client %s\n",
		 client->name);

	if (!FUNC5(__IAVF_CLIENT_INSTANCE_OPENED, &cinst->state)) {
		/* Send an Open request to the client */

		if (client->ops && client->ops->open)
			ret = client->ops->open(&cinst->lan_info, client);
		if (!ret)
			FUNC3(__IAVF_CLIENT_INSTANCE_OPENED,
				&cinst->state);
		else
			/* remove client instance */
			FUNC2(adapter);
	}
}