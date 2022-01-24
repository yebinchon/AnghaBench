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
typedef  int /*<<< orphan*/  u8 ;
typedef  size_t u16 ;
struct sk_buff {int dummy; } ;
struct brcmf_if {int dummy; } ;
struct brcmf_flowring_ring {size_t hash_id; int /*<<< orphan*/  skblist; } ;
struct brcmf_flowring {struct brcmf_flowring_ring** rings; TYPE_1__* hash; int /*<<< orphan*/  dev; } ;
struct brcmf_bus {int /*<<< orphan*/  drvr; } ;
struct TYPE_2__ {int /*<<< orphan*/  mac; int /*<<< orphan*/  ifidx; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRCMF_FLOWRING_INVALID_IFIDX ; 
 int /*<<< orphan*/  FUNC0 (struct brcmf_flowring*,size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (struct brcmf_flowring*,size_t) ; 
 struct brcmf_if* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct brcmf_if*,struct sk_buff*,int) ; 
 struct brcmf_bus* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct brcmf_flowring_ring*) ; 
 struct sk_buff* FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct brcmf_flowring *flow, u16 flowid)
{
	struct brcmf_bus *bus_if = FUNC4(flow->dev);
	struct brcmf_flowring_ring *ring;
	struct brcmf_if *ifp;
	u16 hash_idx;
	u8 ifidx;
	struct sk_buff *skb;

	ring = flow->rings[flowid];
	if (!ring)
		return;

	ifidx = FUNC1(flow, flowid);
	ifp = FUNC2(bus_if->drvr, ifidx);

	FUNC0(flow, flowid, false);
	hash_idx = ring->hash_id;
	flow->hash[hash_idx].ifidx = BRCMF_FLOWRING_INVALID_IFIDX;
	FUNC5(flow->hash[hash_idx].mac);
	flow->rings[flowid] = NULL;

	skb = FUNC7(&ring->skblist);
	while (skb) {
		FUNC3(ifp, skb, false);
		skb = FUNC7(&ring->skblist);
	}

	FUNC6(ring);
}