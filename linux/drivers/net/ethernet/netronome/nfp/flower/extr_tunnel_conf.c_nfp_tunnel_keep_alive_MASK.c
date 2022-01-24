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
typedef  void* u32 ;
struct sk_buff {int dummy; } ;
struct nfp_tun_active_tuns {TYPE_1__* tun_info; int /*<<< orphan*/  count; } ;
struct nfp_app {int dummy; } ;
struct net_device {int dummy; } ;
struct neighbour {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {int /*<<< orphan*/  egress_port; int /*<<< orphan*/  ipv4; } ;

/* Variables and functions */
 int NFP_FL_MAX_ROUTES ; 
 int /*<<< orphan*/  arp_tbl ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct neighbour*,int /*<<< orphan*/ *) ; 
 struct neighbour* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct neighbour*) ; 
 struct net_device* FUNC4 (struct nfp_app*,void*,int /*<<< orphan*/ *) ; 
 struct nfp_tun_active_tuns* FUNC5 (struct sk_buff*) ; 
 int FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct nfp_app*,char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int FUNC10 (struct nfp_tun_active_tuns*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  tun_info ; 

void FUNC11(struct nfp_app *app, struct sk_buff *skb)
{
	struct nfp_tun_active_tuns *payload;
	struct net_device *netdev;
	int count, i, pay_len;
	struct neighbour *n;
	__be32 ipv4_addr;
	u32 port;

	payload = FUNC5(skb);
	count = FUNC0(payload->count);
	if (count > NFP_FL_MAX_ROUTES) {
		FUNC7(app, "Tunnel keep-alive request exceeds max routes.\n");
		return;
	}

	pay_len = FUNC6(skb);
	if (pay_len != FUNC10(payload, tun_info, count)) {
		FUNC7(app, "Corruption in tunnel keep-alive message.\n");
		return;
	}

	FUNC8();
	for (i = 0; i < count; i++) {
		ipv4_addr = payload->tun_info[i].ipv4;
		port = FUNC0(payload->tun_info[i].egress_port);
		netdev = FUNC4(app, port, NULL);
		if (!netdev)
			continue;

		n = FUNC2(&arp_tbl, &ipv4_addr, netdev);
		if (!n)
			continue;

		/* Update the used timestamp of neighbour */
		FUNC1(n, NULL);
		FUNC3(n);
	}
	FUNC9();
}