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
typedef  size_t u16 ;
struct sk_buff {int dummy; } ;
struct brcmf_flowring_ring {scalar_t__ status; int /*<<< orphan*/  skblist; scalar_t__ blocked; } ;
struct brcmf_flowring {struct brcmf_flowring_ring** rings; } ;

/* Variables and functions */
 scalar_t__ BRCMF_FLOWRING_LOW ; 
 int /*<<< orphan*/  MSGBUF ; 
 scalar_t__ RING_OPEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct brcmf_flowring*,size_t,int) ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

struct sk_buff *FUNC4(struct brcmf_flowring *flow, u16 flowid)
{
	struct brcmf_flowring_ring *ring;
	struct sk_buff *skb;

	ring = flow->rings[flowid];
	if (ring->status != RING_OPEN)
		return NULL;

	skb = FUNC2(&ring->skblist);

	if (ring->blocked &&
	    (FUNC3(&ring->skblist) < BRCMF_FLOWRING_LOW)) {
		FUNC1(flow, flowid, false);
		FUNC0(MSGBUF, "Flowcontrol: OPEN for ring %d\n", flowid);
	}

	return skb;
}