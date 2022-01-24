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
typedef  int /*<<< orphan*/ * xpc_notify_func ;
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct xpc_send_msg_slot_uv {int /*<<< orphan*/ * key; int /*<<< orphan*/ * func; int /*<<< orphan*/  msg_slot_number; } ;
struct xpc_notify_mq_msghdr_uv {int dummy; } ;
struct TYPE_4__ {size_t size; int /*<<< orphan*/  msg_slot_number; int /*<<< orphan*/  ch_number; int /*<<< orphan*/  partid; } ;
struct xpc_notify_mq_msg_uv {int /*<<< orphan*/  payload; TYPE_1__ hdr; } ;
struct TYPE_5__ {int /*<<< orphan*/  cached_notify_gru_mq_desc; } ;
struct TYPE_6__ {TYPE_2__ uv; } ;
struct xpc_channel {size_t entry_size; int flags; int reason; size_t partid; int /*<<< orphan*/  n_to_notify; TYPE_3__ sn; int /*<<< orphan*/  number; } ;
typedef  enum xp_retval { ____Placeholder_xp_retval } xp_retval ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int XPC_C_CONNECTED ; 
 int XPC_C_DISCONNECTING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int XPC_NOTIFY_MSG_SIZE_UV ; 
 scalar_t__ XPC_N_CALL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int xpNotConnected ; 
 int xpPayloadTooBig ; 
 int xpSuccess ; 
 int /*<<< orphan*/  xp_partition_id ; 
 int FUNC7 (struct xpc_channel*,int /*<<< orphan*/ ,struct xpc_send_msg_slot_uv**) ; 
 int /*<<< orphan*/  FUNC8 (struct xpc_channel*,struct xpc_send_msg_slot_uv*) ; 
 int /*<<< orphan*/  FUNC9 (struct xpc_channel*) ; 
 int /*<<< orphan*/  FUNC10 (struct xpc_channel*) ; 
 int /*<<< orphan*/ * xpc_partitions ; 
 int FUNC11 (int /*<<< orphan*/ ,struct xpc_notify_mq_msg_uv*,size_t) ; 

__attribute__((used)) static enum xp_retval
FUNC12(struct xpc_channel *ch, u32 flags, void *payload,
		    u16 payload_size, u8 notify_type, xpc_notify_func func,
		    void *key)
{
	enum xp_retval ret = xpSuccess;
	struct xpc_send_msg_slot_uv *msg_slot = NULL;
	struct xpc_notify_mq_msg_uv *msg;
	u8 msg_buffer[XPC_NOTIFY_MSG_SIZE_UV];
	size_t msg_size;

	FUNC0(notify_type != XPC_N_CALL);

	msg_size = sizeof(struct xpc_notify_mq_msghdr_uv) + payload_size;
	if (msg_size > ch->entry_size)
		return xpPayloadTooBig;

	FUNC10(ch);

	if (ch->flags & XPC_C_DISCONNECTING) {
		ret = ch->reason;
		goto out_1;
	}
	if (!(ch->flags & XPC_C_CONNECTED)) {
		ret = xpNotConnected;
		goto out_1;
	}

	ret = FUNC7(ch, flags, &msg_slot);
	if (ret != xpSuccess)
		goto out_1;

	if (func != NULL) {
		FUNC3(&ch->n_to_notify);

		msg_slot->key = key;
		FUNC6(); /* a non-NULL func must hit memory after the key */
		msg_slot->func = func;

		if (ch->flags & XPC_C_DISCONNECTING) {
			ret = ch->reason;
			goto out_2;
		}
	}

	msg = (struct xpc_notify_mq_msg_uv *)&msg_buffer;
	msg->hdr.partid = xp_partition_id;
	msg->hdr.ch_number = ch->number;
	msg->hdr.size = msg_size;
	msg->hdr.msg_slot_number = msg_slot->msg_slot_number;
	FUNC5(&msg->payload, payload, payload_size);

	ret = FUNC11(ch->sn.uv.cached_notify_gru_mq_desc, msg,
			       msg_size);
	if (ret == xpSuccess)
		goto out_1;

	FUNC1(&xpc_partitions[ch->partid], ret);
out_2:
	if (func != NULL) {
		/*
		 * Try to NULL the msg_slot's func field. If we fail, then
		 * xpc_notify_senders_of_disconnect_uv() beat us to it, in which
		 * case we need to pretend we succeeded to send the message
		 * since the user will get a callout for the disconnect error
		 * by xpc_notify_senders_of_disconnect_uv(), and to also get an
		 * error returned here will confuse them. Additionally, since
		 * in this case the channel is being disconnected we don't need
		 * to put the the msg_slot back on the free list.
		 */
		if (FUNC4(&msg_slot->func, func, NULL) != func) {
			ret = xpSuccess;
			goto out_1;
		}

		msg_slot->key = NULL;
		FUNC2(&ch->n_to_notify);
	}
	FUNC8(ch, msg_slot);
out_1:
	FUNC9(ch);
	return ret;
}