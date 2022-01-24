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
typedef  int /*<<< orphan*/ * xpc_notify_func ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct xpc_partition {int nchannels; int /*<<< orphan*/ * channels; } ;
typedef  enum xp_retval { ____Placeholder_xp_retval } xp_retval ;
struct TYPE_2__ {int (* send_payload ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  XPC_N_CALL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,void*,short,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*) ; 
 int xpUnknownReason ; 
 short xp_max_npartitions ; 
 TYPE_1__ xpc_arch_ops ; 
 int /*<<< orphan*/  xpc_chan ; 
 int /*<<< orphan*/  FUNC3 (struct xpc_partition*) ; 
 scalar_t__ FUNC4 (struct xpc_partition*) ; 
 struct xpc_partition* xpc_partitions ; 

enum xp_retval
FUNC5(short partid, int ch_number, u32 flags, void *payload,
			 u16 payload_size, xpc_notify_func func, void *key)
{
	struct xpc_partition *part = &xpc_partitions[partid];
	enum xp_retval ret = xpUnknownReason;

	FUNC1(xpc_chan, "payload=0x%p, partid=%d, channel=%d\n", payload,
		partid, ch_number);

	FUNC0(partid < 0 || partid >= xp_max_npartitions);
	FUNC0(ch_number < 0 || ch_number >= part->nchannels);
	FUNC0(payload == NULL);
	FUNC0(func == NULL);

	if (FUNC4(part)) {
		ret = xpc_arch_ops.send_payload(&part->channels[ch_number],
			  flags, payload, payload_size, XPC_N_CALL, func, key);
		FUNC3(part);
	}
	return ret;
}