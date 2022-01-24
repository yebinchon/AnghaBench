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
typedef  scalar_t__ u32 ;
typedef  size_t u16 ;
struct sk_buff {int dummy; } ;
struct brcmf_flowring_ring {int /*<<< orphan*/  skblist; int /*<<< orphan*/  blocked; } ;
struct brcmf_flowring {struct brcmf_flowring_ring** rings; } ;

/* Variables and functions */
 scalar_t__ BRCMF_FLOWRING_HIGH ; 
 scalar_t__ BRCMF_FLOWRING_LOW ; 
 int /*<<< orphan*/  MSGBUF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct brcmf_flowring*,size_t,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sk_buff*) ; 

u32 FUNC4(struct brcmf_flowring *flow, u16 flowid,
			   struct sk_buff *skb)
{
	struct brcmf_flowring_ring *ring;

	ring = flow->rings[flowid];

	FUNC3(&ring->skblist, skb);

	if (!ring->blocked &&
	    (FUNC2(&ring->skblist) > BRCMF_FLOWRING_HIGH)) {
		FUNC1(flow, flowid, true);
		FUNC0(MSGBUF, "Flowcontrol: BLOCK for ring %d\n", flowid);
		/* To prevent (work around) possible race condition, check
		 * queue len again. It is also possible to use locking to
		 * protect, but that is undesirable for every enqueue and
		 * dequeue. This simple check will solve a possible race
		 * condition if it occurs.
		 */
		if (FUNC2(&ring->skblist) < BRCMF_FLOWRING_LOW)
			FUNC1(flow, flowid, false);
	}
	return FUNC2(&ring->skblist);
}