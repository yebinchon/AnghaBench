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
struct sk_buff {TYPE_1__* dev; } ;
struct ipvl_port {int dummy; } ;
struct ipvl_addr {int dummy; } ;
struct ethhdr {int /*<<< orphan*/  h_source; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 struct ethhdr* FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ipvl_addr* FUNC2 (struct ipvl_port*,void*,int,int) ; 
 void* FUNC3 (struct ipvl_port*,struct sk_buff*,int*) ; 

__attribute__((used)) static bool FUNC4(struct sk_buff *skb, struct ipvl_port *port)
{
	struct ethhdr *eth = FUNC0(skb);
	struct ipvl_addr *addr;
	void *lyr3h;
	int addr_type;

	if (FUNC1(eth->h_source, skb->dev->dev_addr)) {
		lyr3h = FUNC3(port, skb, &addr_type);
		if (!lyr3h)
			return true;

		addr = FUNC2(port, lyr3h, addr_type, false);
		if (addr)
			return false;
	}

	return true;
}