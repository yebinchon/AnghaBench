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
struct sk_buff {int /*<<< orphan*/  protocol; scalar_t__ len; struct net_device* dev; } ;
struct rmnet_port {int data_format; } ;
struct rmnet_map_dl_csum_trailer {int dummy; } ;
struct rmnet_map_control_command {unsigned char cmd_type; } ;
struct net_device {TYPE_1__* netdev_ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* ndo_start_xmit ) (struct sk_buff*,struct net_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_MAP ; 
 int RMNET_FLAGS_INGRESS_MAP_CKSUMV4 ; 
 struct rmnet_map_control_command* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct net_device*) ; 

__attribute__((used)) static void FUNC6(struct sk_buff *skb,
			       unsigned char type,
			       struct rmnet_port *port)
{
	struct rmnet_map_control_command *cmd;
	struct net_device *dev = skb->dev;

	if (port->data_format & RMNET_FLAGS_INGRESS_MAP_CKSUMV4)
		FUNC4(skb,
			 skb->len - sizeof(struct rmnet_map_dl_csum_trailer));

	skb->protocol = FUNC1(ETH_P_MAP);

	cmd = FUNC0(skb);
	cmd->cmd_type = type & 0x03;

	FUNC2(dev);
	dev->netdev_ops->ndo_start_xmit(skb, dev);
	FUNC3(dev);
}