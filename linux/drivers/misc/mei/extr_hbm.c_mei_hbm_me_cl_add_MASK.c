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
typedef  int /*<<< orphan*/  uuid_le ;
struct TYPE_2__ {int /*<<< orphan*/  protocol_name; } ;
struct mei_me_client {scalar_t__ tx_flow_ctrl_creds; int /*<<< orphan*/  client_id; TYPE_1__ props; } ;
struct mei_device {int dummy; } ;
struct hbm_props_response {int /*<<< orphan*/  me_addr; TYPE_1__ client_properties; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct mei_me_client* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mei_device*,struct mei_me_client*) ; 
 int /*<<< orphan*/  FUNC2 (struct mei_me_client*) ; 
 int /*<<< orphan*/  FUNC3 (struct mei_device*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC4(struct mei_device *dev,
			     struct hbm_props_response *res)
{
	struct mei_me_client *me_cl;
	const uuid_le *uuid = &res->client_properties.protocol_name;

	FUNC3(dev, uuid);

	me_cl = FUNC0(sizeof(struct mei_me_client), GFP_KERNEL);
	if (!me_cl)
		return -ENOMEM;

	FUNC2(me_cl);

	me_cl->props = res->client_properties;
	me_cl->client_id = res->me_addr;
	me_cl->tx_flow_ctrl_creds = 0;

	FUNC1(dev, me_cl);

	return 0;
}