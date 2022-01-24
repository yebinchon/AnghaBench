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
struct sk_buff {int dummy; } ;
struct nfp_flower_cmsg_hdr {scalar_t__ version; scalar_t__ type; } ;
struct nfp_app {int dummy; } ;

/* Variables and functions */
 scalar_t__ NFP_FLOWER_CMSG_TYPE_FLOW_STATS ; 
 scalar_t__ NFP_FLOWER_CMSG_TYPE_PORT_MOD ; 
 scalar_t__ NFP_FLOWER_CMSG_TYPE_PORT_REIFY ; 
 scalar_t__ NFP_FLOWER_CMSG_TYPE_TUN_NEIGH ; 
 scalar_t__ NFP_FLOWER_CMSG_VER1 ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct nfp_flower_cmsg_hdr* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfp_app*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfp_app*,char*,scalar_t__) ; 
 scalar_t__ FUNC5 (struct nfp_app*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct nfp_app*,struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct nfp_app*,struct sk_buff*) ; 
 scalar_t__ FUNC8 (int) ; 

void FUNC9(struct nfp_app *app, struct sk_buff *skb)
{
	struct nfp_flower_cmsg_hdr *cmsg_hdr;

	cmsg_hdr = FUNC2(skb);

	if (FUNC8(cmsg_hdr->version != NFP_FLOWER_CMSG_VER1)) {
		FUNC4(app, "Cannot handle repr control version %u\n",
				     cmsg_hdr->version);
		FUNC1(skb);
		return;
	}

	if (cmsg_hdr->type == NFP_FLOWER_CMSG_TYPE_FLOW_STATS) {
		/* We need to deal with stats updates from HW asap */
		FUNC7(app, skb);
		FUNC0(skb);
	} else if (cmsg_hdr->type == NFP_FLOWER_CMSG_TYPE_PORT_MOD &&
		   FUNC5(app, skb)) {
		/* Handle MTU acks outside wq to prevent RTNL conflict. */
		FUNC0(skb);
	} else if (cmsg_hdr->type == NFP_FLOWER_CMSG_TYPE_TUN_NEIGH) {
		/* Acks from the NFP that the route is added - ignore. */
		FUNC0(skb);
	} else if (cmsg_hdr->type == NFP_FLOWER_CMSG_TYPE_PORT_REIFY) {
		/* Handle REIFY acks outside wq to prevent RTNL conflict. */
		FUNC3(app, skb);
		FUNC0(skb);
	} else {
		FUNC6(app, skb, cmsg_hdr->type);
	}
}