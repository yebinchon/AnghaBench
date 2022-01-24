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
struct xpc_send_msg_slot_uv {int msg_slot_number; int /*<<< orphan*/  next; } ;
struct xpc_channel_uv {int /*<<< orphan*/  msg_slot_free_list; struct xpc_send_msg_slot_uv* send_msg_slots; } ;
struct TYPE_2__ {struct xpc_channel_uv uv; } ;
struct xpc_channel {int local_nentries; int /*<<< orphan*/  lock; TYPE_1__ sn; } ;
typedef  enum xp_retval { ____Placeholder_xp_retval } xp_retval ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct xpc_send_msg_slot_uv* FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int xpNoMemory ; 
 int xpSuccess ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static enum xp_retval
FUNC4(struct xpc_channel *ch)
{
	struct xpc_channel_uv *ch_uv = &ch->sn.uv;
	struct xpc_send_msg_slot_uv *msg_slot;
	unsigned long irq_flags;
	int nentries;
	int entry;
	size_t nbytes;

	for (nentries = ch->local_nentries; nentries > 0; nentries--) {
		nbytes = nentries * sizeof(struct xpc_send_msg_slot_uv);
		ch_uv->send_msg_slots = FUNC0(nbytes, GFP_KERNEL);
		if (ch_uv->send_msg_slots == NULL)
			continue;

		for (entry = 0; entry < nentries; entry++) {
			msg_slot = &ch_uv->send_msg_slots[entry];

			msg_slot->msg_slot_number = entry;
			FUNC3(&ch_uv->msg_slot_free_list,
					      &msg_slot->next);
		}

		FUNC1(&ch->lock, irq_flags);
		if (nentries < ch->local_nentries)
			ch->local_nentries = nentries;
		FUNC2(&ch->lock, irq_flags);
		return xpSuccess;
	}

	return xpNoMemory;
}