#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct hinic_sq_task {int ufo_v6_identify; int /*<<< orphan*/  pkt_info1; int /*<<< orphan*/  pkt_info0; } ;
typedef  enum hinic_l4_offload_type { ____Placeholder_hinic_l4_offload_type } hinic_l4_offload_type ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INNER_L4LEN ; 
 int /*<<< orphan*/  L4_OFFLOAD ; 
 int /*<<< orphan*/  QUEUE_INFO_MSS ; 
 int /*<<< orphan*/  QUEUE_INFO_PLDOFF ; 
 int /*<<< orphan*/  QUEUE_INFO_TCPUDP_CS ; 
 int /*<<< orphan*/  QUEUE_INFO_TSO ; 
 int /*<<< orphan*/  QUEUE_INFO_UFO ; 
 int TCP_OFFLOAD_ENABLE ; 
 int /*<<< orphan*/  TSO_FLAG ; 
 int UDP_OFFLOAD_ENABLE ; 

void FUNC4(struct hinic_sq_task *task, u32 *queue_info,
			    enum hinic_l4_offload_type l4_offload,
			    u32 l4_len, u32 offset, u32 ip_ident, u32 mss)
{
	u32 tso = 0, ufo = 0;

	if (l4_offload == TCP_OFFLOAD_ENABLE)
		tso = 1;
	else if (l4_offload == UDP_OFFLOAD_ENABLE)
		ufo = 1;

	task->ufo_v6_identify = ip_ident;

	task->pkt_info0 |= FUNC2(l4_offload, L4_OFFLOAD);
	task->pkt_info0 |= FUNC2(tso || ufo, TSO_FLAG);
	task->pkt_info1 |= FUNC3(l4_len, INNER_L4LEN);

	*queue_info |= FUNC1(offset, QUEUE_INFO_PLDOFF) |
		       FUNC1(tso, QUEUE_INFO_TSO) |
		       FUNC1(ufo, QUEUE_INFO_UFO) |
		       FUNC1(!!l4_offload, QUEUE_INFO_TCPUDP_CS);

	/* set MSS value */
	*queue_info = FUNC0(*queue_info, QUEUE_INFO_MSS);
	*queue_info |= FUNC1(mss, QUEUE_INFO_MSS);
}