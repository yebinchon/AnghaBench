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
typedef  int u32 ;
struct rndis_indicate_status {int status_buf_offset; int /*<<< orphan*/  status; } ;
struct TYPE_2__ {struct rndis_indicate_status indicate_status; } ;
struct rndis_message {TYPE_1__ msg; } ;
struct netvsc_reconfig {int /*<<< orphan*/  list; int /*<<< orphan*/  event; } ;
struct net_device_context {int speed; int /*<<< orphan*/  dwork; int /*<<< orphan*/  lock; int /*<<< orphan*/  reconfig_events; } ;
struct net_device {scalar_t__ reg_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ NETREG_REGISTERED ; 
 int /*<<< orphan*/  RNDIS_STATUS_LINK_SPEED_CHANGE ; 
 int /*<<< orphan*/  RNDIS_STATUS_MEDIA_CONNECT ; 
 int /*<<< orphan*/  RNDIS_STATUS_MEDIA_DISCONNECT ; 
 int /*<<< orphan*/  RNDIS_STATUS_NETWORK_CHANGE ; 
 struct netvsc_reconfig* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct net_device_context* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC6(struct net_device *net,
				struct rndis_message *resp)
{
	struct rndis_indicate_status *indicate = &resp->msg.indicate_status;
	struct net_device_context *ndev_ctx = FUNC2(net);
	struct netvsc_reconfig *event;
	unsigned long flags;

	/* Update the physical link speed when changing to another vSwitch */
	if (indicate->status == RNDIS_STATUS_LINK_SPEED_CHANGE) {
		u32 speed;

		speed = *(u32 *)((void *)indicate
				 + indicate->status_buf_offset) / 10000;
		ndev_ctx->speed = speed;
		return;
	}

	/* Handle these link change statuses below */
	if (indicate->status != RNDIS_STATUS_NETWORK_CHANGE &&
	    indicate->status != RNDIS_STATUS_MEDIA_CONNECT &&
	    indicate->status != RNDIS_STATUS_MEDIA_DISCONNECT)
		return;

	if (net->reg_state != NETREG_REGISTERED)
		return;

	event = FUNC0(sizeof(*event), GFP_ATOMIC);
	if (!event)
		return;
	event->event = indicate->status;

	FUNC4(&ndev_ctx->lock, flags);
	FUNC1(&event->list, &ndev_ctx->reconfig_events);
	FUNC5(&ndev_ctx->lock, flags);

	FUNC3(&ndev_ctx->dwork, 0);
}