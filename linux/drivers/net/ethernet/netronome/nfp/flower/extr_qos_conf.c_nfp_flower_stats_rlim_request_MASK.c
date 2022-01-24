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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct nfp_police_cfg_head {int /*<<< orphan*/  port; } ;
struct nfp_flower_priv {TYPE_1__* app; } ;
struct TYPE_2__ {int /*<<< orphan*/  ctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  NFP_FLOWER_CMSG_TYPE_QOS_STATS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_police_cfg_head*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 struct sk_buff* FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nfp_police_cfg_head* FUNC4 (struct sk_buff*) ; 

__attribute__((used)) static void
FUNC5(struct nfp_flower_priv *fl_priv,
			      u32 netdev_port_id)
{
	struct nfp_police_cfg_head *head;
	struct sk_buff *skb;

	skb = FUNC3(fl_priv->app,
				    sizeof(struct nfp_police_cfg_head),
				    NFP_FLOWER_CMSG_TYPE_QOS_STATS,
				    GFP_ATOMIC);
	if (!skb)
		return;

	head = FUNC4(skb);
	FUNC1(head, 0, sizeof(struct nfp_police_cfg_head));
	head->port = FUNC0(netdev_port_id);

	FUNC2(fl_priv->app->ctrl, skb);
}