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
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ u32 ;
typedef  size_t u16 ;
struct recv_comp_data {scalar_t__ status; int /*<<< orphan*/  tid; } ;
struct netvsc_device {scalar_t__ recv_completion_cnt; struct netvsc_channel* chan_table; } ;
struct multi_recv_comp {int next; struct recv_comp_data* slots; } ;
struct netvsc_channel {struct multi_recv_comp mrc; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ NAPI_POLL_WEIGHT ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct netvsc_device*,struct multi_recv_comp*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,struct netvsc_device*,struct netvsc_channel*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct net_device *ndev,
				 struct netvsc_device *nvdev, u16 q_idx,
				 u64 tid, u32 status)
{
	struct netvsc_channel *nvchan = &nvdev->chan_table[q_idx];
	struct multi_recv_comp *mrc = &nvchan->mrc;
	struct recv_comp_data *rcd;
	u32 filled, avail;

	FUNC1(nvdev, mrc, &filled, &avail);

	if (FUNC3(filled > NAPI_POLL_WEIGHT)) {
		FUNC2(ndev, nvdev, nvchan);
		FUNC1(nvdev, mrc, &filled, &avail);
	}

	if (FUNC3(!avail)) {
		FUNC0(ndev, "Recv_comp full buf q:%hd, tid:%llx\n",
			   q_idx, tid);
		return;
	}

	rcd = mrc->slots + mrc->next;
	rcd->tid = tid;
	rcd->status = status;

	if (++mrc->next == nvdev->recv_completion_cnt)
		mrc->next = 0;
}