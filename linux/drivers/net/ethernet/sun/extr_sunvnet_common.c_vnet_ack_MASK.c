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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_5__ {int /*<<< orphan*/  _peer_sid; int /*<<< orphan*/  _local_sid; struct vio_dring_state* drings; } ;
struct vnet_port {int start_cons; int /*<<< orphan*/  q_index; TYPE_2__ vio; } ;
struct TYPE_6__ {scalar_t__ state; } ;
struct vio_net_desc {TYPE_3__ hdr; } ;
struct vio_dring_state {int /*<<< orphan*/  cons; } ;
struct TYPE_4__ {scalar_t__ stype_env; } ;
struct vio_dring_data {int /*<<< orphan*/  end_idx; TYPE_1__ tag; } ;
struct netdev_queue {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ VIO_DESC_READY ; 
 scalar_t__ VIO_DRING_DATA ; 
 size_t VIO_DRIVER_TX_RING ; 
 struct net_device* FUNC0 (struct vnet_port*) ; 
 scalar_t__ FUNC1 (struct vio_dring_state*) ; 
 scalar_t__ FUNC2 (struct vnet_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vio_dring_state*,int /*<<< orphan*/ ) ; 
 struct netdev_queue* FUNC4 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int) ; 
 struct vio_net_desc* FUNC10 (struct vio_dring_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct vio_dring_state*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct vio_dring_state*) ; 

__attribute__((used)) static int FUNC13(struct vnet_port *port, void *msgbuf)
{
	struct vio_dring_state *dr = &port->vio.drings[VIO_DRIVER_TX_RING];
	struct vio_dring_data *pkt = msgbuf;
	struct net_device *dev;
	u32 end;
	struct vio_net_desc *desc;
	struct netdev_queue *txq;

	if (FUNC9(pkt->tag.stype_env != VIO_DRING_DATA))
		return 0;

	end = pkt->end_idx;
	dev = FUNC0(port);
	FUNC5(dev);
	if (FUNC9(!FUNC3(dr, end))) {
		FUNC7(dev);
		return 0;
	}

	/* sync for race conditions with vnet_start_xmit() and tell xmit it
	 * is time to send a trigger.
	 */
	FUNC8(port->vio._local_sid,
				  port->vio._peer_sid, end);
	dr->cons = FUNC11(dr, end);
	desc = FUNC10(dr, dr->cons);
	if (desc->hdr.state == VIO_DESC_READY && !port->start_cons) {
		/* vnet_start_xmit() just populated this dring but missed
		 * sending the "start" LDC message to the consumer.
		 * Send a "start" trigger on its behalf.
		 */
		if (FUNC2(port, dr->cons) > 0)
			port->start_cons = false;
		else
			port->start_cons = true;
	} else {
		port->start_cons = true;
	}
	FUNC7(dev);

	txq = FUNC4(dev, port->q_index);
	if (FUNC9(FUNC6(txq) &&
		     FUNC12(dr) >= FUNC1(dr)))
		return 1;

	return 0;
}