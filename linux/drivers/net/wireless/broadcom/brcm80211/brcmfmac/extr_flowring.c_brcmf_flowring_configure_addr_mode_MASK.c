#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
typedef  size_t u16 ;
struct brcmf_pub {int dummy; } ;
struct brcmf_flowring {int* addr_mode; TYPE_1__** rings; TYPE_2__* hash; int /*<<< orphan*/  dev; } ;
struct brcmf_bus {struct brcmf_pub* drvr; } ;
typedef  enum proto_addr_mode { ____Placeholder_proto_addr_mode } proto_addr_mode ;
struct TYPE_4__ {int ifidx; size_t flowid; } ;
struct TYPE_3__ {scalar_t__ status; } ;

/* Variables and functions */
 size_t FUNC0 (TYPE_2__*) ; 
 scalar_t__ RING_CLOSING ; 
 scalar_t__ RING_OPEN ; 
 int /*<<< orphan*/  FUNC1 (struct brcmf_pub*,size_t) ; 
 struct brcmf_bus* FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct brcmf_flowring *flow, int ifidx,
					enum proto_addr_mode addr_mode)
{
	struct brcmf_bus *bus_if = FUNC2(flow->dev);
	struct brcmf_pub *drvr = bus_if->drvr;
	u32 i;
	u16 flowid;

	if (flow->addr_mode[ifidx] != addr_mode) {
		for (i = 0; i < FUNC0(flow->hash); i++) {
			if (flow->hash[i].ifidx == ifidx) {
				flowid = flow->hash[i].flowid;
				if (flow->rings[flowid]->status != RING_OPEN)
					continue;
				flow->rings[flowid]->status = RING_CLOSING;
				FUNC1(drvr, flowid);
			}
		}
		flow->addr_mode[ifidx] = addr_mode;
	}
}