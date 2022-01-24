#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct xpc_partition_uv {scalar_t__ act_state_req; int /*<<< orphan*/  reason; } ;
struct TYPE_5__ {struct xpc_partition_uv uv; } ;
struct xpc_partition {int nchannels; struct xpc_channel* channels; TYPE_1__ sn; } ;
struct TYPE_7__ {int /*<<< orphan*/  next; } ;
struct TYPE_8__ {int ch_number; scalar_t__ size; int msg_slot_number; TYPE_3__ u; } ;
struct xpc_notify_mq_msg_uv {TYPE_4__ hdr; } ;
struct xpc_channel_uv {int /*<<< orphan*/  recv_msg_list; struct xpc_notify_mq_msg_uv* recv_msg_slots; } ;
struct TYPE_6__ {struct xpc_channel_uv uv; } ;
struct xpc_channel {int flags; int remote_nentries; int entry_size; int /*<<< orphan*/  number; int /*<<< orphan*/  idle_wq; int /*<<< orphan*/  kthreads_idle; TYPE_2__ sn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int XPC_C_CONNECTED ; 
 int XPC_C_CONNECTEDCALLOUT_MADE ; 
 int /*<<< orphan*/  FUNC1 (struct xpc_partition*) ; 
 scalar_t__ XPC_P_ASR_DEACTIVATE_UV ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct xpc_notify_mq_msg_uv*,struct xpc_notify_mq_msg_uv*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  xpBadChannelNumber ; 
 int /*<<< orphan*/  xpc_activate_IRQ_rcvd ; 
 int /*<<< orphan*/  xpc_activate_IRQ_rcvd_lock ; 
 int /*<<< orphan*/  xpc_activate_IRQ_wq ; 
 int /*<<< orphan*/  FUNC10 (struct xpc_channel*,struct xpc_notify_mq_msg_uv*) ; 
 int /*<<< orphan*/  FUNC11 (struct xpc_channel*) ; 
 int /*<<< orphan*/  FUNC12 (struct xpc_channel*) ; 
 int /*<<< orphan*/  xpc_part ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct xpc_partition*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC15(struct xpc_partition *part,
			    struct xpc_notify_mq_msg_uv *msg)
{
	struct xpc_partition_uv *part_uv = &part->sn.uv;
	struct xpc_channel *ch;
	struct xpc_channel_uv *ch_uv;
	struct xpc_notify_mq_msg_uv *msg_slot;
	unsigned long irq_flags;
	int ch_number = msg->hdr.ch_number;

	if (FUNC7(ch_number >= part->nchannels)) {
		FUNC3(xpc_part, "xpc_handle_notify_IRQ_uv() received invalid "
			"channel number=0x%x in message from partid=%d\n",
			ch_number, FUNC1(part));

		/* get hb checker to deactivate from the remote partition */
		FUNC5(&xpc_activate_IRQ_rcvd_lock, irq_flags);
		if (part_uv->act_state_req == 0)
			xpc_activate_IRQ_rcvd++;
		part_uv->act_state_req = XPC_P_ASR_DEACTIVATE_UV;
		part_uv->reason = xpBadChannelNumber;
		FUNC6(&xpc_activate_IRQ_rcvd_lock, irq_flags);

		FUNC8(&xpc_activate_IRQ_wq);
		return;
	}

	ch = &part->channels[ch_number];
	FUNC12(ch);

	if (!(ch->flags & XPC_C_CONNECTED)) {
		FUNC11(ch);
		return;
	}

	/* see if we're really dealing with an ACK for a previously sent msg */
	if (msg->hdr.size == 0) {
		FUNC10(ch, msg);
		FUNC11(ch);
		return;
	}

	/* we're dealing with a normal message sent via the notify_mq */
	ch_uv = &ch->sn.uv;

	msg_slot = ch_uv->recv_msg_slots +
	    (msg->hdr.msg_slot_number % ch->remote_nentries) * ch->entry_size;

	FUNC0(msg_slot->hdr.size != 0);

	FUNC4(msg_slot, msg, msg->hdr.size);

	FUNC13(&ch_uv->recv_msg_list, &msg_slot->hdr.u.next);

	if (ch->flags & XPC_C_CONNECTEDCALLOUT_MADE) {
		/*
		 * If there is an existing idle kthread get it to deliver
		 * the payload, otherwise we'll have to get the channel mgr
		 * for this partition to create a kthread to do the delivery.
		 */
		if (FUNC2(&ch->kthreads_idle) > 0)
			FUNC9(&ch->idle_wq, 1);
		else
			FUNC14(part, ch->number);
	}
	FUNC11(ch);
}